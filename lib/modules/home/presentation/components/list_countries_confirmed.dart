import 'package:flutter/material.dart';

class ListCountriesConfirmed extends StatelessWidget {
  final List<Map<String, Object>> testData;

  const ListCountriesConfirmed({
    Key? key,
    required this.testData,
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
