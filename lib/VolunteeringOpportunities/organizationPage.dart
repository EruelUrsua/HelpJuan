import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/opportunitiesPage.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 20),
                        child: CircleAvatar(
                          radius: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              'Red Cross -',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Sorsogon Chapter',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              'Emergency Services',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 10, right: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What we do",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Questrial',
                          color: const Color(0xFF6E7191)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          fontFamily: 'Questrial',
                          color: const Color(0xFF6E7191)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      "Opportunities for you",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Questrial',
                          color: const Color(0xFF6E7191)),
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
                                        margin:
                                            EdgeInsets.only(top: 3, left: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 5),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Text(
                                              '11PM - 5AM Oct 25, 2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
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
                                        margin:
                                            EdgeInsets.only(top: 3, left: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 5),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Text(
                                              '11PM - 5AM Oct 25, 2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
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
                                        margin:
                                            EdgeInsets.only(top: 3, left: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 5),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Text(
                                              '11PM - 5AM Oct 25, 2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
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
                                        margin:
                                            EdgeInsets.only(top: 3, left: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 15, left: 5),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: InkWell(
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                color: Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Text(
                                              '11PM - 5AM Oct 25, 2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Questrial',
                                                  color:
                                                      const Color(0xFF6E7191)),
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
            ],
          ),
        ),
      ),
    );
  }
}
