import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';
import '../../../../configs/text_styles.dart';
import '../screens/country_details_screen.dart';
import 'on_tap_opacity.dart';

class RestCountryCard extends StatefulWidget {
  static const route = '/map';
  final String countryTitle;
  final String affectedValue;
  final String recoveredValue;
  final double countryProgress;
  final Color countryProgressColor;
  final String image;

  const RestCountryCard({
    Key? key,
    required this.countryTitle,
    required this.affectedValue,
    required this.recoveredValue,
    required this.countryProgress,
    required this.countryProgressColor,
    required this.image,
  }) : super(key: key);

  @override
  _RestCountryCardState createState() => _RestCountryCardState();
}

class _RestCountryCardState extends State<RestCountryCard> {
  @override
  Widget build(BuildContext context) => OnTapOpacityContainer(
        onTap: () => Navigator.of(context).push(CountryDetailsScreen.route()),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: grey.withOpacity(0.3),
              ),
            ),
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'icons/flags/png/${widget.image}.png',
                      package: 'country_icons',
                      width: 46,
                      height: 30,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 12, bottom: 6),
                      child: Text(
                        widget.countryTitle,
                        textAlign: TextAlign.start,
                        style: TextStyles.titleCountry,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          '562' + S.countryStatisticsDeathCases,
                          textAlign: TextAlign.start,
                          style: TextStyles.infoCountry,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24, right: 4),
                  child: Text(
                    '14,459',
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 22, right: 12.0),
                  child: Icon(
                    CupertinoIcons.arrow_up,
                    color: primary,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
