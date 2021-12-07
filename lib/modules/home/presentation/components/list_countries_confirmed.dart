import 'package:flutter/material.dart';

class ListCountriesConfirmed extends StatelessWidget {
  const ListCountriesConfirmed({
    Key? key,
    required this.testData,
  }) : super(key: key);

  final List<Map<String, Object>> testData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Country"),
          trailing: Text("Confirmed"),
        ),
        ...List.generate(
          testData.length,
          (index) => ListTile(
            title: Text("${testData[index]['Country']}"),
            trailing: Text("${testData[index]['TotalConfirmed']}"),
          ),
        ),
      ],
    );
  }
}
