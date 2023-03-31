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
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3, left: 15),
                                child: Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 15),
                                    child: Text(
                                      'Difficulty: ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'High',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Questrial',
                                          color: Color(0xFFCC8989)),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 5),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 5),
                                        child: Text(
                                          '11PM - 5AM Oct 25, 2022',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 70),
                                child: CircleAvatar(
                                  radius: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 65, left: 70),
                                child: Text(
                                  '5 spots left',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFFCC8989)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3, left: 15),
                                child: Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 15),
                                    child: Text(
                                      'Difficulty: ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'High',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Questrial',
                                          color: Color(0xFFCC8989)),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 5),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 5),
                                        child: Text(
                                          '11PM - 5AM Oct 25, 2022',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 70),
                                child: CircleAvatar(
                                  radius: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 65, left: 70),
                                child: Text(
                                  '5 spots left',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFFCC8989)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3, left: 15),
                                child: Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 15),
                                    child: Text(
                                      'Difficulty: ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'High',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Questrial',
                                          color: Color(0xFFCC8989)),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 5),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 5),
                                        child: Text(
                                          '11PM - 5AM Oct 25, 2022',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 70),
                                child: CircleAvatar(
                                  radius: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 65, left: 70),
                                child: Text(
                                  '5 spots left',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFFCC8989)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3, left: 15),
                                child: Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 15),
                                    child: Text(
                                      'Difficulty: ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'High',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Questrial',
                                          color: Color(0xFFCC8989)),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 15, left: 5),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 15),
                                        child: InkWell(
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 5),
                                        child: Text(
                                          '11PM - 5AM Oct 25, 2022',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Questrial',
                                              color: const Color(0xFF6E7191)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 70),
                                child: CircleAvatar(
                                  radius: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 65, left: 70),
                                child: Text(
                                  '5 spots left',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFFCC8989)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
