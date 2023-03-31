import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelpJuan'),
        elevation: 0,
        backgroundColor: const Color(0xFF89C0CC),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
// --- Welcome text + bg
              Container(
                color: const Color(0xFF89C0CC),
                width: 550,
                height: MediaQuery.of(context).size.height * 0.035,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Welcome, Ysha!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Questrial',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// --- Hours Volunteered text + bg
              Container(
                color: const Color(0xFF89C0CC),
                width: 550,
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Text(
                        'Hours Volunteered',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Questrial',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// time text + bg
              Container(
                color: const Color(0xFF89C0CC),
                width: 550,
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Text(
                        '145h',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Questrial',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// Your opportunity text
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 0.0, 0.0),
                child: Text(
                  'Your Opportunity',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF6E7181),
                    fontFamily: 'Questrial',
                  ),
                ),
              ),

// --- Your Opporunity box
              Container(
                margin: EdgeInsets.only(top: 6, left: 20),
                width: 350,
                height: 150,
                child: Material(
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

// Upcoming opportunities text
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 0.0, 0.0),
                child: Text(
                  'Upcoming Opportunities',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF6E7181),
                    fontFamily: 'Questrial',
                  ),
                ),
              ),

// Upcoming opp box
              Container(
                margin: EdgeInsets.only(top: 6, left: 20),
                width: 350,
                height: 150,
                child: Material(
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

// --- Your organizations text
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 0.0, 0.0),
                child: Text(
                  'Your Organizations',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF6E7181),
                    fontFamily: 'Questrial',
                  ),
                ),
              ),

// --- Your organizations circle
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                child: Row(
                  children: [
                    PhysicalModel(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(width: 90, height: 90),
                        shape: BoxShape.circle),
                  ],
                ),
              ),
            ], //stop here
          ),
        ),
      ),
    );
  }
}
