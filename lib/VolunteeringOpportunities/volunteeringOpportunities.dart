import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VolunteeringOpportunitiesPage extends StatefulWidget {
  const VolunteeringOpportunitiesPage({super.key});

  @override
  State<VolunteeringOpportunitiesPage> createState() =>
      _VolunteeringOpportunitiesPageState();
}

class _VolunteeringOpportunitiesPageState
    extends State<VolunteeringOpportunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // AppBar
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(right: 100, top: 25),
          child: Text('Volunteering Opportunities',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        ),
        Center(
          child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              child: Placeholder(
                fallbackHeight: 50,
              ) //searchbar
              ),
        ),
        Column(
          children: [
            // Container(
            //   margin: const EdgeInsets.only(right: 220, top: 15),
            //   width: 80,
            //   child: Placeholder(
            //     fallbackHeight: 25,
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              child: Placeholder(
                fallbackHeight: 170,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              child: Placeholder(
                fallbackHeight: 170,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              child: Placeholder(
                fallbackHeight: 170,
              ),
            )
          ],
        )
      ]),
    );
  }
}
