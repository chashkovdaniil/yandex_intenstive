abstract class CovidRepository {
  Future<String> summary();
  Future<String> countries();
  Future<String> dayOneCountry(String country);
  Future<String> dayOneSummary();
}
