import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String name = "";
  int hours = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelpJuan'),
        elevation: 10,
        backgroundColor: const Color(0xFF89C0CC),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
            child: Text(
              'Welcome, $name !',
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xFF6E7191),
                fontFamily: 'Questrial',
              ),
            ),
          ),
// --- Hours text
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            child: Text(
              '$hours',
              style: TextStyle(
                fontSize: 30,
                color: const Color(0xFF6E7191),
                fontFamily: 'Questrial',
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20.0, 40, 0.0, 0.0),
            child: Text(
              'Your Opportunity',
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xFF6E7181),
                fontFamily: 'Questrial',
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            child: Row(
              children: [
                PhysicalModel(
                  color: Colors.white,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(width: 350, height: 150),
                ),
              ],
            ),
          ),

// --- Upcoming Opportunities text
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 40, 0.0, 0.0),
            child: Text(
              'Upcoming Opportunities',
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xFF6E7181),
                fontFamily: 'Questrial',
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            child: Row(
              children: [
                PhysicalModel(
                  color: Colors.white,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(width: 350, height: 150),
                ),
              ],
            ),
          ),

//  --- Your Organizations Text
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 40, 0.0, 0.0),
            child: Text(
              'Your Organizations',
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xFF6E7181),
                fontFamily: 'Questrial',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
