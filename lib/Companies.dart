import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Companies extends StatefulWidget {
  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  List<String> companies = [
    'Company A',
    'Company B',
    'Company C',
    'Company D',
    'Company E',
  ];
  List<String> filteredCompanies = [];

  @override
  void initState() {
    filteredCompanies = companies;
    super.initState();
  }

  void filterCompanies(String searchQuery) {
    setState(() {
      filteredCompanies = companies
          .where((company) =>
              company.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Companies'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              onChanged: filterCompanies,
              obscureText: false,
              placeholder: "Search",
              prefix: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: filteredCompanies.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.business),
                    title: Text(filteredCompanies[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
