import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:yandex_intensive/configs/constants.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/allert_notification_dialog.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../screens/country_details_screen.dart';
import 'on_tap_opacity.dart';

class TopCountryCard extends StatefulWidget {
  static const route = '/map';
  final String countryTitle;
  final String affectedValue;
  final String recoveredValue;
  final double countryProgress;
  final Color countryProgressColor;

  const TopCountryCard({
    Key? key,
    required this.countryTitle,
    required this.affectedValue,
    required this.recoveredValue,
    required this.countryProgress,
    required this.countryProgressColor,
  }) : super(key: key);

  @override
  _TopCountryCardState createState() => _TopCountryCardState();
}

class _TopCountryCardState extends State<TopCountryCard> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: OnTapOpacityContainer(
          onTap: () => Navigator.of(context).push(CountryDetailsScreen.route()),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: grey.withOpacity(0.3),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 6),
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    animateFromLastPercent: true,
                    animation: true,
                    animationDuration: 800,
                    circularStrokeCap: CircularStrokeCap.round,
                    lineWidth: 7.0,
                    backgroundColor: secondary,
                    percent: widget.countryProgress,
                    center: Text(
                      '${(widget.countryProgress * 100).toStringAsFixed(0)}%',
                    ),
                    progressColor: widget.countryProgressColor,
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
                          width: 150,
                          child: Text(
                            S.mapTopAffected + widget.affectedValue,
                            textAlign: TextAlign.start,
                            style: TextStyles.infoCountry,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, bottom: 4.0),
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            S.mapTopRecovered + widget.recoveredValue,
                            textAlign: TextAlign.start,
                            style: TextStyles.infoCountry,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12, right: 12.0),
                    child: OnTapOpacityContainer(
                      //TODO: what this button is for lmao ??
                      onTap: () => showAlertDialog(
                          context: context,
                          title: "Enable notification",
                          content:
                              "Enable notification so you can always be up to date with new information.",
                          cancelActionText: "Later",
                          defaultActionText: "Enable now"),
                      child: const Icon(
                        CupertinoIcons.bell,
                        color: grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
