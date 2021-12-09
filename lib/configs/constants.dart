import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

import '../modules/map/presentation/helpers/model.dart';
import '../modules/map/presentation/widgets/rest_country_card.dart';
import '../modules/map/presentation/widgets/top_country_card.dart';
import 'colors.dart';

class S {
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
}

class MockData {
  static List<MapModel> get mapData => const <MapModel>[
        MapModel('Afghanistan', 348),
        MapModel('Angola', 561),
        MapModel('Albania', 599),
        MapModel('United Arab Emirates', 225),
        MapModel('Argentina', 569),
        MapModel('Armenia', 31),
        MapModel('Australia', 5),
        MapModel('Austria', 232),
        MapModel('Azerbaijan', 238),
        MapModel('Burundi', 533),
        MapModel('Belgium', 374),
        MapModel('Benin', 298),
        MapModel('Burkina Faso', 67),
        MapModel('Bangladesh', 68),
        MapModel('Bulgaria', 170),
        MapModel('Bahamas', 54),
        MapModel('Bosnia and Herz.', 379),
        MapModel('Belarus', 34),
        MapModel('Belize', 280),
        MapModel('Bolivia', 385),
        MapModel('Brazil', 194),
        MapModel('Brunei', 289),
        MapModel('Bhutan', 335),
        MapModel('Botswana', 417),
        MapModel('Central African Rep.', 227),
        MapModel('Canada', 246),
        MapModel('Switzerland', 582),
        MapModel('Chile', 516),
        MapModel('China', 431),
        MapModel("Côte d'Ivoire", 200),
        MapModel('Cameroon', 464),
        MapModel('Dem. Rep. Congo', 132),
        MapModel('Congo', 226),
        MapModel('Colombia', 548),
        MapModel('Costa Rica', 390),
        MapModel('Cuba', 21),
        MapModel('N. Cyprus', 9),
        MapModel('Cyprus', 63),
        MapModel('Czech Rep.', 307),
        MapModel('Germany', 277),
        MapModel('Djibouti', 314),
        MapModel('Denmark', 80),
        MapModel('Dominican Rep.', 420),
        MapModel('Algeria', 89),
        MapModel('Ecuador', 54),
        MapModel('Egypt', 554),
        MapModel('Eritrea', 562),
        MapModel('Spain', 168),
        MapModel('Estonia', 309),
        MapModel('Ethiopia', 323),
        MapModel('Finland', 417),
        MapModel('Fiji', 564),
        MapModel('Falkland Is.', 4),
        MapModel('France', 242),
        MapModel('Gabon', 536),
        MapModel('United Kingdom', 553),
        MapModel('Georgia', 374),
        MapModel('Ghana', 471),
        MapModel('Guinea', 144),
        MapModel('Gambia', 498),
        MapModel('Guinea-Bissau', 454),
        MapModel('Eq. Guinea', 314),
        MapModel('Greece', 324),
        MapModel('Greenland', 566),
        MapModel('Guatemala', 310),
        MapModel('Guyana', 154),
        MapModel('Honduras', 46),
        MapModel('Croatia', 331),
        MapModel('Haiti', 191),
        MapModel('Hungary', 315),
        MapModel('Indonesia', 171),
        MapModel('India', 543),
        MapModel('Ireland', 256),
        MapModel('Iran', 154),
        MapModel('Iraq', 50),
        MapModel('Iceland', 554),
        MapModel('Israel', 441),
        MapModel('Italy', 401),
        MapModel('Jamaica', 59),
        MapModel('Jordan', 182),
        MapModel('Japan', 89),
        MapModel('Kazakhstan', 457),
        MapModel('Kenya', 519),
        MapModel('Kyrgyzstan', 255),
        MapModel('Cambodia', 151),
        MapModel('Korea', 600),
        MapModel('Kosovo', 388),
        MapModel('Kuwait', 468),
        MapModel('Lao PDR', 470),
        MapModel('Lebanon', 54),
        MapModel('Liberia', 455),
        MapModel('Libya', 492),
        MapModel('Sri Lanka', 393),
        MapModel('Lesotho', 474),
        MapModel('Lithuania', 431),
        MapModel('Luxembourg', 521),
        MapModel('Latvia', 101),
        MapModel('Morocco', 226),
        MapModel('Moldova', 173),
        MapModel('Madagascar', 357),
        MapModel('Mexico', 458),
        MapModel('Macedonia', 476),
        MapModel('Mali', 215),
        MapModel('Myanmar', 337),
        MapModel('Montenegro', 543),
        MapModel('Mongolia', 497),
        MapModel('Mozambique', 533),
        MapModel('Mauritania', 584),
        MapModel('Malawi', 547),
        MapModel('Malaysia', 274),
        MapModel('Namibia', 568),
        MapModel('New Caledonia', 589),
        MapModel('Niger', 85),
        MapModel('Nigeria', 139),
        MapModel('Nicaragua', 217),
        MapModel('Netherlands', 337),
        MapModel('Norway', 59),
        MapModel('Nepal', 421),
        MapModel('New Zealand', 573),
        MapModel('Oman', 331),
        MapModel('Pakistan', 252),
        MapModel('Panama', 354),
        MapModel('Peru', 550),
        MapModel('Philippines', 419),
        MapModel('Papua New Guinea', 480),
        MapModel('Poland', 557),
        MapModel('Puerto Rico', 161),
        MapModel('Dem. Rep. Korea', 478),
        MapModel('Portugal', 371),
        MapModel('Paraguay', 29),
        MapModel('Palestine', 100),
        MapModel('Qatar', 412),
        MapModel('Romania', 354),
        MapModel('Russia', 579),
        MapModel('Rwanda', 547),
        MapModel('W. Sahara', 245),
        MapModel('Saudi Arabia', 42),
        MapModel('Sudan', 17),
        MapModel('S. Sudan', 245),
        MapModel('Senegal', 540),
        MapModel('Solomon Is.', 264),
        MapModel('Sierra Leone', 244),
        MapModel('El Salvador', 577),
        MapModel('Somaliland', 306),
        MapModel('Somalia', 286),
        MapModel('Serbia', 46),
        MapModel('Suriname', 351),
        MapModel('Slovakia', 479),
        MapModel('Slovenia', 382),
        MapModel('Sweden', 495),
        MapModel('Swaziland', 142),
        MapModel('Syria', 23),
        MapModel('Chad', 369),
        MapModel('Togo', 278),
        MapModel('Thailand', 599),
        MapModel('Tajikistan', 555),
        MapModel('Turkmenistan', 488),
        MapModel('Timor-Leste', 184),
        MapModel('Trinidad and Tobago', 64),
        MapModel('Tunisia', 344),
        MapModel('Turkey', 430),
        MapModel('Taiwan', 447),
        MapModel('Tanzania', 397),
        MapModel('Uganda', 212),
        MapModel('Ukraine', 449),
        MapModel('Uruguay', 328),
        MapModel('United States of America', 491),
        MapModel('Uzbekistan', 147),
        MapModel('Venezuela', 561),
        MapModel('Vietnam', 454),
        MapModel('Vanuatu', 362),
        MapModel('Yemen', 545),
        MapModel('South Africa', 473),
        MapModel('Zambia', 68),
        MapModel('Zimbabwe', 429)
      ];

  static MapShapeSource get mapSource => MapShapeSource.asset(
        'assets/world_map.json',
        shapeDataField: 'name',
        dataCount: mapData.length,
        primaryValueMapper: (int index) => mapData[index].country,
        shapeColorValueMapper: (int index) => mapData[index].density,
        shapeColorMappers: [
          const MapColorMapper(
            from: -1,
              to: 100,
              color: affected1,
            ),
            const MapColorMapper(
              from: 101,
              to: 200,
              color: affected2,
            ),
            const MapColorMapper(
              from: 201,
              to: 300,
              color: affected3,
            ),
            const MapColorMapper(
              from: 301,
              to: 400,
              color: affected4,
            ),
            const MapColorMapper(
              from: 401,
              to: 500,
              color: affected5,
            ),
            const MapColorMapper(
              from: 501,
              to: 600,
              color: affected6,
            ),
          ],
      );

  static MapZoomPanBehavior get zoomPanBehavior => MapZoomPanBehavior(
        focalLatLng: const MapLatLng(27.1751, 78.0421),
        zoomLevel: 3,
        showToolbar: true,
        toolbarSettings: const MapToolbarSettings(
          position: MapToolbarPosition.topLeft,
          iconColor: Colors.red,
          itemBackgroundColor: Colors.green,
          itemHoverColor: Colors.blue,
        ),
      );

  static List<TopCountryCard> get topCountryList =>
      <TopCountryCard>[
        const TopCountryCard(
          countryTitle: "China",
          affectedValue: "81.05k",
          recoveredValue: "72.44k",
          countryProgress: 0.26,
          countryProgressColor: primary,
        ),
        const TopCountryCard(
          countryTitle: "Italy",
          affectedValue: "53.5k",
          recoveredValue: "6.07k",
          countryProgress: 0.17,
          countryProgressColor: green,
        ),
        const TopCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
        ),
      ];
  static List<RestCountryCard> get restCountryList =>
      <RestCountryCard>[
        const RestCountryCard(
          countryTitle: "China",
          affectedValue: "81.05k",
          recoveredValue: "72.44k",
          countryProgress: 0.26,
          countryProgressColor: primary,
          image: "fr",
        ),
        const RestCountryCard(
          countryTitle: "Italy",
          affectedValue: "53.5k",
          recoveredValue: "6.07k",
          countryProgress: 0.17,
          countryProgressColor: green,
          image: "kr",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "sk",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "cl",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "nl",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "be",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "at",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "no",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "no",
        ),
        const RestCountryCard(
          countryTitle: "USA",
          affectedValue: "26.892",
          recoveredValue: "178",
          countryProgress: 0.09,
          countryProgressColor: blue,
          image: "by",
        ),
      ];
}