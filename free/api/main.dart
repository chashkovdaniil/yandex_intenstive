import 'dart:io';
import 'package:dio/dio.dart';


class Region
{
	String  iso;      // Трёхсимвольный код страны
	String  name;     // Название в удобочитаемом виде
	String? province; // null — значит, по всей стране

	Region(this.iso, this.name, [this.province = null]);

	@override
	String toString() =>
		'$iso, $name' + (province != null ? ', $province' : '');
}

class CovidReport
{
	/*
	 * Статистика по коронавирусу на момент времени в определённом месте.
	 * Без приставки diff — за всё время, иначе с прошлого раза (за день)
	 */
	late String last_update; // '1970-01-01 04:00:00'
	late String date;        // '1970-01-01'
	Region?     region;      // null — значит, по всему миру

	// Подтверждено случаев заболевания
	late int confirmed;
	late int confirmed_diff;

	// Смертей
	late int deaths;
	late int deaths_diff;

	// Вызворовевших
	late int recovered;
	late int recovered_diff;

	// Болеющих на данный момент
	late int active;
	late int active_diff;

	// Вероятность смерти (именно вероятностеь, не процент)
	late num fatality_rate;


	CovidReport(Map<String, dynamic> map, [this.region = null])
	{
		confirmed      = map['confirmed'];
		confirmed_diff = map['confirmed_diff'];
		deaths         = map['deaths'];
		deaths_diff    = map['deaths_diff'];
		recovered      = map['recovered'];
		recovered_diff = map['recovered_diff'];
		active         = map['active'];
		active_diff    = map['active_diff'];
		fatality_rate  = map['fatality_rate'];
		last_update    = map['last_update'];
		date           = map['date'];
	}

	CovidReport.sum(List<CovidReport> items, [this.region = null])
	{
		var sum = (a, b) => a + b;

		confirmed      = items.map((x) => x.confirmed)      .fold(0, (a, b) => a + b);
		confirmed_diff = items.map((x) => x.confirmed_diff) .fold(0, (a, b) => a + b);
		deaths         = items.map((x) => x.deaths)         .fold(0, (a, b) => a + b);
		deaths_diff    = items.map((x) => x.deaths_diff)    .fold(0, (a, b) => a + b);
		recovered      = items.map((x) => x.recovered)      .fold(0, (a, b) => a + b);
		recovered_diff = items.map((x) => x.recovered_diff) .fold(0, (a, b) => a + b);
		active         = items.map((x) => x.active)         .fold(0, (a, b) => a + b);
		active_diff    = items.map((x) => x.active_diff)    .fold(0, (a, b) => a + b);
		date           = items[0].date;
		last_update    = items.map((x) => x.last_update)
			.reduce((a, b) => b.compareTo(a) > 0 ? b : a);
		// TODO: точно так?
		fatality_rate  = items.map((x) => x.fatality_rate * x.confirmed)
			.fold(0, sum) / confirmed;
	}

	@override
	String toString()
	{
		String s = '';
		s += "confirmed:      $confirmed\n";
		s += "confirmed_diff: $confirmed_diff\n";
		s += "deaths:         $deaths\n";
		s += "deaths_diff:    $deaths_diff\n";
		s += "recovered:      $recovered\n";
		s += "recovered_diff: $recovered_diff\n";
		s += "active:         $active\n";
		s += "active_diff:    $active_diff\n";
		s += "fatality_rate:  $fatality_rate\n";
		s += "last_update:    $last_update\n";
		s += "date:           $date\n";
		s += "region:         ${region.toString()}\n";
		return s;
	}
}



class CovidCountry
{
	//  province   stat
	Map<String, CovidReport> _provinces = Map<String, CovidReport>();
	late CovidReport         _total;

	CovidCountry(List<Map<String, dynamic>> items)
	{
		if (items.isEmpty)
			throw FormatException('Список провинций не должен быть пустым');

		var country = Region(
			items[0]['region']['iso'],
			items[0]['region']['name'],
		);

		if (items.length == 1)
		{
			if (items[0]['region']['province'] != '')
				throw FormatException('Если у страны одна запись, провинций быть не должно');
			_total = CovidReport(items[0], country);
			return;
		}

		for (Map<String, dynamic> province in items)
		{
			// TODO: предусмотреть случай, если api вернёт бяку
			var region = Region(
				province['region']['iso']!,
				province['region']['name']!,
				province['region']['province']!
			);
			_provinces[region.province!] = CovidReport(province, region);
		}

		_total = CovidReport.sum(List.from(_provinces.values), country);
	}

	Iterable<String> get provinces            => _provinces.keys;
	CovidReport      get total                => _total;
	CovidReport?         province(String cnt) => _provinces[cnt];
}

class CovidWorld
{
	//   iso       stat
	Map<String, CovidCountry> _countries = Map<String, CovidCountry>();
	late CovidReport          _total;

	// CovidWorld(List<Map<String, dynamic>> responses)
	CovidWorld(List<dynamic> responses)
	{
		// Собираем все записи по одной стране в одно
		//    iso       stats
		var cnts = Map<String, List<Map<String, dynamic>>>(); // countries
		for (var item in responses)
		{
			String iso = item['region']['iso'];
			if (!cnts.containsKey(iso))
				cnts[iso] = <Map<String, dynamic>>[];
			cnts[iso]!.add(item);
		}

		for (String iso in cnts.keys)
			_countries[iso] = CovidCountry(cnts[iso]!);

		_total = CovidReport.sum(List.from(_countries.values.map((x) => x.total)));
	}

	Iterable<String> get countries           => _countries.keys;
	CovidReport      get total               => _total;
	CovidCountry?        country(String cnt) => _countries[cnt];
}



// Обращается к серверу, получает данные и преобразует в
// удобочитаемые объекты. Отдаёт их по запросам.
class CovidApi
{
	static const            _api   = 'https://covid-api.com/api/reports';
	Dio                     _dio   = Dio(BaseOptions(baseUrl: _api));
	Map<String, CovidWorld> _world = Map<String, CovidWorld>();


	// По умолчанию — сегодня; date: 1970-12-31
	Future<CovidWorld> getOneDay([String date = '']) async
	{
		if (_world.containsKey(date))
			return Future.value(_world[date]!);

		try
		{
			var data = (await _dio.get(
				'',
				queryParameters:
					date != '' ? { 'date': date } : null
			)).data;

			var world = CovidWorld(data['data']);
			_world[date] = world;
			return world;
		}
		catch (e)
		{
			stderr.write(e);
			return Future.error(e);
		}
	}

	// Проблема: если использовать covid-api.com, то придётся сделать
	// столько запросов, сколько всего дней; возможное решение: найти
	// другое api для этой задачи
	static Future<CovidCountry> getInterval(
		String dateStart,
		String dateFinish,
		String countryIso
	)
	{
		throw UnimplementedError();
	}
}



void main() async
{
	CovidWorld world = await CovidApi().getOneDay();

	var print_region = ([country = null, province = null])
	{
		if (country == null)
			print('World\n${world.total.toString()}');
		else if (province == null)
			print('$country\n${world.country(country!)!.total.toString()}');
		else
			print('$country, $province\n${world.country(country!)!.province(province!).toString()}');
		print('');
	};

	print('count of countries: ${world.countries.length}');
	print_region();
	print_region('RUS');
	print_region('RUS', 'Adygea Republic');
	print_region('ALB');
	print_region('USA');
	print_region('BRA');
	print_region('IDN');
	print_region('PER', 'Ucayali');

	return;
}



/* END */
