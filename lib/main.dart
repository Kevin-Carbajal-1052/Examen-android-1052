import 'package:flutter/material.dart';
void main() {
  runApp(Examen());
}
class Examen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroupedListViewExample(),
    );
  }
}
class GroupedListViewExample extends StatelessWidget {
  final Map<String, List<String>> teams = {
    "Team A": ["John", "Beth"],
    "Team B": ["Will", "Miranda"],
    "Team C": ["Mike", "Danny"],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:723144595.
        title: Text("Kevin Carbajal Mat:1052", style: 
        TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: teams.keys.map((team) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  team,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: teams[team]!.map((member) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(member),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
