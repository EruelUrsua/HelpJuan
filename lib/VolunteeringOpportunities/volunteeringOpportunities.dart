import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/Backend/authentication_service.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/opportunitiesPage.dart';
import 'package:solutions_challenge_app/bnav.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VolunteeringOpportunitiesPage extends StatefulWidget {
  const VolunteeringOpportunitiesPage({super.key});

  @override
  State<VolunteeringOpportunitiesPage> createState() =>
      _VolunteeringOpportunitiesPageState();
}

class _VolunteeringOpportunitiesPageState
    extends State<VolunteeringOpportunitiesPage> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Authentication().signOut();
              })
        ],
      ), // AppBar
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
              ), //search bar--------------------------
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpportunitiesPage()));
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                'Red Cross Sorsogon Chapter',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Emergency Services',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Difficulty: ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'High',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: CircleAvatar(
                            radius: 30,
                            child: Text('Logo'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpportunitiesPage()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpportunitiesPage()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpportunitiesPage()));
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

//---------------------------------------------------------
// void _showModalBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     builder: (context) => DraggableScrollableSheet(
//       expand: false,
//       initialChildSize: 0.7,
//       maxChildSize: 0.8,
//       minChildSize: 0.32,
//       builder: (context, scrollController) => const SingleChildScrollView(
//         child: OpportunitiesPage(),
//       ),
//     ),
//   );
// }
