import 'covid_datasource_abstruct.dart';
import 'ram_covid_datasource.dart';
import 'cash_covid_datasource.dart';


class CovidDatasource implements CovidDatasourceAbstruct
{
  RAMCovidDatasource  _ram;
  CashCovidDatasource _cash;

  @override
  Future<CovidReport> getWorld(
    [DateTime date = DateTime.now()]
  ) async
    => _loadData(date) ?? _ram.getWorld(date);

  @override
  Future<CovidReport> getCountry(
    String country,
    [DateTime date = DateTime.now()]
  ) async
    => _loadData(date) ?? _ram.getCountry(country, date);

  @override
  Future<CovidReport> getProvince(
    String country,
    String province,
    [DateTime date = DateTime.now()]
  ) async
    => _loadData(date) ?? _ram.getProvince(country, province, data);


  @override
  Future<List<String>> countryCodes() async
    => _loadData(DataTime.now()) && _ram.countryCodes();

  @override
  Future<String> countryName(String code) async
    => _loadData(DataTime.now()) && _ram.countryName(code);


  @override
  Future<bool> has([DateTime date = DateTime.now()]) async
    => _loadData(date) ?? _ram.has(date);


  _loadData(DateTime date) async
  {
    throw UnimplementedError();
  }

  get _exc =>
    throw CovidNotFoundException('Not found covid in RAM');
}



// END
