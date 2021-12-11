import 'covid_report.dart';
import 'data_raw.dart';

class CovidCountry {
  late final Map<String, CovidReport> provinces;
  late final CovidReport total;

  CovidCountry.fromProvinces(List<CovidReport> items) {
    if (items.isEmpty) {
      throw const FormatException('Список провинций не должен быть пустым');
    }

    if (items.length == 1) {
      if (items[0].region.province != '') {
        throw const FormatException('Если у страны одна запись, провинций быть не должно');
      }
      provinces = {};
      total = items[0];
      return;
    }

    provinces = { for (var item in items) item.region.province : item };
    total     = CovidReport.fromProvinces(items);
  }
}

class CovidWorld {
  //          iso       stat
  final Map<String, CovidCountry> countries = <String, CovidCountry>{};
  late final CovidReport total;

  CovidWorld(DataRaw responses) {
    var template = <String, List<CovidReport>>{};
    for (final item in responses.data) {
      final iso = item.region.iso;
      template.containsKey(iso) ?
        template[iso]!.add(item) :
        template[iso] = [ item ];
    }

    for (final iso in template.keys) {
      countries[iso] = CovidCountry.fromProvinces(template[iso]!);
    }

    total = CovidReport.fromProvinces(
      List.from(countries.values.map((x) => x.total)),
    );
  }
}