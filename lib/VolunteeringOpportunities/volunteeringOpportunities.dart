import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/bnav.dart';

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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('Volunteering Opportunities',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15)), //volunteering opportunities
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ), //search bar
              GestureDetector(
                onTap: () {
                  print("HI");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 170,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Text('Mr Beast'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("HI");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 170,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Text('Mr Beast'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("HI");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 170,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Text('Mr Beast'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("HI");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  width: 350,
                  height: 170,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Text('Mr Beast'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
