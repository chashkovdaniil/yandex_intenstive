/*
 * Основной класс, который вбирает все остальные CovidDatasource-классы
 */

import 'cash_covid_datasource.dart';
import 'covid_datasource_abstruct.dart';
import 'covid_network_taker.dart';
import 'ram_covid_datasource.dart';

import '../../domain/entities/covid_report.dart';
import '../../domain/entities/covid_help.dart';



class CovidDatasource implements CovidDatasourceAbstruct
{
  RAMCovidDatasource  _ram  = RAMCovidDatasource();
  CashCovidDatasource _cash = CashCovidDatasource();
  CovidNetworkTaker   _net  = CovidNetworkTaker();

  @override
  Future<CovidWorld> getAll(
    DateTime date
  ) async
  {
    await _loadData(date);
    return _ram.getAll(date);
  }

  @override
  Future<CovidReport> getWorld(
    DateTime date
  ) async
  {
     await _loadData(date);
     return _ram.getWorld(date);
  }

  @override
  Future<CovidReport> getCountry(
    DateTime date,
    String country,
  ) async
  {
    await _loadData(date);
    return _ram.getCountry(date, country);
  }

  @override
  Future<CovidReport> getProvince(
    DateTime date,
    String country,
    String province,
  ) async
  {
    await _loadData(date);
    return _ram.getProvince(date, country, province);
  }


  @override
  Future<List<String>> countryCodes() async
  {
    await _loadData(DateTime.now());
    return _ram.countryCodes();
  }

  @override
  Future<String> countryName(String code) async
  {
    await _loadData(DateTime.now());
    return _ram.countryName(code);
  }


  @override
  Future<bool> has(DateTime date) async
  {
    try
    {
      await _loadData(date);
      return _ram.has(date);
    }
    catch (e)
    {
      return false;
    }
  }


  Future<void> _loadData(DateTime date) async
  {
    if (await _ram.has(date))
      return;
    
    CovidWorld world = await _net.getOneDay(date);
    // _cash.push(date, world);
    _ram.push(date, world);
  }

  get _exc =>
    throw CovidNotFoundException('Not found covid in RAM');
}



// END
