import 'package:flutter/material.dart';
import 'package:yandex_intensive/configs/colors.dart';
import 'package:yandex_intensive/core/domain/entities/country_covid_entity.dart';

class ListCountriesConfirmed extends StatelessWidget {
  final List<CountryCovid> countriesCovid;

  const ListCountriesConfirmed({
    Key? key,
    required this.countriesCovid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Country'),
          trailing: Text('Confirmed'),
        ),
        ...List.generate(
          countriesCovid.length,
          (index) => ListTile(
            title: Text(countriesCovid[index].country.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${countriesCovid[index].covidReport.confirmed}'),
                const SizedBox(width: 10),
                countriesCovid[index].covidReport.confirmedDiff > 0
                    ? const Icon(
                        Icons.trending_up,
                        color: AppColors.red,
                      )
                    : const Icon(
                        Icons.trending_down,
                        color: AppColors.green,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
