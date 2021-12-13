import 'colors.dart';

class StringValues {
  static String get mapTitle => 'World Wide map';

  static String get mapAreas => 'COVID - 19 Affected Areas';

  static String get mapAreasLess => 'Most Affected';

  static String get mapAreasMost => 'Less Affected';

  static String get mapTop => 'Top Countries';

  static String get mapTopAffected => 'Affected - ';

  static String get mapTopRecovered => 'Recovered - ';

  static String get mapRest => 'Rest of the world';

  static String get mapRestDescription => 'List of all Affected Countries';

  static String get mapRestCases => ' - Death cases reported';

  static String get countryStatisticsTitle => ' - statistic';

  static String get countryStatisticsInfectedCases =>
      ' Infected cases reported';

  static String get countryStatisticsDeathCases => ' Death cases reported';

  static String get countryStatisticsGraphTitle =>
      'Current affected and death people';

  static String get countryStatisticsDeath => 'Death';

  static String get countryStatisticsAffected => 'Affected';

  // Strings for education
  static const String diagnosisDescription =
      'If you feel some symptoms or you are thinking that you may'
      'be infected. Please report your self so other people can'
      'be aware that someone who is in isolation is nearby them.';

  static const String diagnosisWarningCaps = 'COVSTATS';

  static const String diagnosisWarning =
      ' gives everyone the opportunity to report their symptoms'
      'anonymously for the benefit of others';

  static const String diagnosisHeader = 'Report my Status';

  static const String diagnosisButtonText = 'Please report your status';

  static const String diagnosisRussianPhoneNumber = '88002000112';

  static const diseaseLegendData = [
    ['Cold', 'assets/images/cold@3x.png'],
    ['Flu', 'assets/images/flu@3x.png'],
    ['COVID-19', 'assets/images/covid@3x.png'],
  ];

  static const symptomsHeader = 'Symptom Check';

  static const symptomsSubtitle = 'Check you symptoms for';

  static const symptomsLegendSubtitle = 'Legend';

  static const symptomRarityLegendData = [
    ['Common', 'assets/images/common.png'],
    ['Sometimes', 'assets/images/sometimes.png'],
    ['Rare', 'assets/images/rare.png'],
  ];

  /*
   * Первые три слова в каждом списке обозначают редкость симпотомов и,
   * соответственно, какую иконку следует рисовать; имена файлов самих
   * иконок следует брать из symptomColumnAssets
   */
  static const symptomColumnData = [
    ['rare', 'rare', 'common', 'Shortness of breath'],
    ['rare', 'common', 'common', 'Fever'],
    ['sometimes', 'common', 'common', 'Cough, chest discomfort'],
    ['sometimes', 'common', 'never', 'Fatigue, weakness'],
    ['rare', 'common', 'never', 'Aches'],
    ['rare', 'common', 'never', 'Chills'],
    ['rare', 'common', 'never', 'Headache'],
    ['common', 'sometimes', 'never', 'Sore throat'],
    ['common', 'sometimes', 'never', 'Sneezing'],
    ['common', 'sometimes', 'never', 'Stuffy, runny nose'],
  ];

  static const symptomColumnAssets = {
    'never': 'assets/images/never.png',
    'rare': 'assets/images/rare.png',
    'sometimes': 'assets/images/sometimes.png',
    'common': 'assets/images/common.png',
  };

  static const symptomColumnLegendAssets = [
    'assets/images/cold_dark.png',
    'assets/images/flu_dark.png',
    'assets/images/covid_dark.png',
  ];
}
