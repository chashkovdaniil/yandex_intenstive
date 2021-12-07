import 'package:dio/dio.dart';


class Region
{
	String  iso;      // Трёхсимвольный код страны
	String  name;     // Название в удобочитаемом виде
	String? province; // null — значит, по всей стране

	Region(this.iso, this.name);

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
	late String  last_update; // '1970-01-01 04:00:00'
	late String  date;        // '1970-01-01'
	Region?      region;      // null — значит, по всему миру

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


	CovidReport(Map<String, dynamic> map, {this.region = null})
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
	//        province   stat
	late Map<String, CovidReport> _provinces;
	late CovidReport              _total;

	CovidCountry(List<Map<String, dynamic>> responses)
	{
		throw UnimplementedError();
	}

	Iterable<String> get provinces            => _provinces.keys;
	CovidReport      get total                => _total;
	CovidReport?         province(String cnt) => _provinces[cnt];
}

class CovidWorld
{
	//         iso       stat
	late Map<String, CovidCountry> _countries;
	late CovidReport               _total;

	CovidWorld(List<Map<String, dynamic>> responses)
	{
		throw UnimplementedError();
	}

	Iterable<String> get countries           => _countries.keys;
	CovidReport      get total               => _total;
	CovidCountry?        country(String cnt) => _countries[cnt];
}



// Обращается к серверу, получает данные и преобразует в
// удобочитаемые объекты. Отдаёт их по запросам.
class CovidApi
{
	static const _api     = 'https://covid-api.com/api';
	static const _reports = '/reports';

	// По умолчанию — сегодня
	static Future<CovidWorld> getOneDay([String date = ''])
	{
		throw UnimplementedError();
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



void main()
{
	return;
}



/* END */
