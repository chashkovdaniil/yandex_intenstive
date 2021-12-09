import 'covid_report.dart';



class CovidCountry
{
  Map<String, CovidReport> _provinces = Map<String, CovidReport>();
  late CovidReport _total;

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

  Iterable<String> get provinces => _provinces.keys;
  CovidReport get total => _total;
  CovidReport? province(String cnt) => _provinces[cnt];
}



class CovidWorld
{
  //   iso       stat
  Map<String, CovidCountry> _countries = Map<String, CovidCountry>();
  late CovidReport _total;

  CovidWorld(List<dynamic> responses)
  {
    // Собираем все записи по одной стране в одно
    //                    iso             stats
    var countries = Map<String, List<Map<String, dynamic>>>();
    for (var item in responses)
    {
      String iso = item['region']['iso'];
      if (!countries.containsKey(iso))
        countries[iso] = <Map<String, dynamic>>[];
      countries[iso]!.add(item);
    }

    for (String iso in countries.keys) {
      _countries[iso] = CovidCountry(countries[iso]!);
    }

    _total = CovidReport.sum(List.from(_countries.values.map((x) => x.total)));
  }

  Iterable<String> get countries => _countries.keys;
  CovidReport get total => _total;
  CovidCountry? country(String cnt) => _countries[cnt];
}



// END
