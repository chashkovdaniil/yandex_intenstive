import '../../domain/entities/covid_help.dart';

abstract class CovidStorage {
  void addWorldInfo(DateTime date, CovidWorld world);
}