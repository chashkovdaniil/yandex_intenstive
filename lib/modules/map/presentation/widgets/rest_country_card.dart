import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/app_routes.dart';
import '../../../../configs/colors.dart';
import '../../../../configs/text_styles.dart';
import '../../../general/on_tap_opacity.dart';

class RestCountryCard extends StatefulWidget {
  final String countryTitle;
  final String deathValue;
  final String affectedValue;
  final String image;

  const RestCountryCard({
    Key? key,
    required this.countryTitle,
    required this.deathValue,
    required this.affectedValue,
    required this.image,
  }) : super(key: key);

  @override
  _RestCountryCardState createState() => _RestCountryCardState();
}

class _RestCountryCardState extends State<RestCountryCard> {
  @override
  Widget build(BuildContext context) => OnTapOpacityContainer(
    onTap: () => Navigator.of(context).pushNamed(AppRoutes.countryDetails),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: AppColors.grey.withOpacity(0.3),
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
                        overflow: TextOverflow.clip,
                        style: TextStyles.titleCountry,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
                          child: Text(
                          widget.deathValue + 'death cases',
                          textAlign: TextAlign.start,
                          style: TextStyles.infoCountry,
                          softWrap: true,
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
                  padding: const EdgeInsets.only(top: 24, right: 4),
                  child: Text(
                    widget.affectedValue,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 22, right: 8.0),
                  child: Icon(
                    CupertinoIcons.arrow_up,
                    color: AppColors.primary,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
