import 'package:yandex_intensive/modules/map/presentation/screens/country_details_screen.dart';

import '../modules/search/presentation/search_screen.dart';

class AppRoutes {
  static String get mapPageScreen => '/map-page';

  static String get homePageScreen => '/home-page';

  static String get searchScreenRoute => SearchScreen.route;
  static String get countryDetails => CountryDetailsScreen.route;
}
