import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/opportunitiesPage.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(children: [
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
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/images/RedAlert.png',
                                fit: BoxFit.contain),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                'Red Alert -',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF6E7191)),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Local Chapter',
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
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                '3 volunteer(s) in this Opportunity',
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
                        'Local Chapter is a community-based volunteering program of a non-profit organization. The Chapter helps the local government unit enable and elevate communities to reduce disaster risk.',
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                      child: Text(
                                        'Red Alert Local Chapter',
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
                                                color: Color(0xFFBE5757)),
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
                                                  top: 7, left: 5),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/material-symbols_location-on.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 5),
                                              child: Text(
                                                'Location',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 5),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/tabler_calendar-exclamation.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 4),
                                              child: Text(
                                                '11PM - 5AM Oct 25, 2022',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 70),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                            'assets/images/RedAlert.png',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 65, left: 70),
                                      child: Text(
                                        '5 spots left',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFFBE5757)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                      child: Text(
                                        'Bayanihan Local Chapter',
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
                                                color: Color(0xFFBE5757)),
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
                                                  top: 7, left: 5),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/material-symbols_location-on.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 5),
                                              child: Text(
                                                'Location',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 4),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/tabler_calendar-exclamation.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 4),
                                              child: Text(
                                                '11PM - 5AM Oct 25, 2022',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 60),
                                      child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                              'assets/images/BayanihanOne.png',
                                              fit: BoxFit.contain)),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 45, left: 60),
                                      child: Text(
                                        '5 spots left',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFFBE5757)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                      child: Text(
                                        'Safety Check Local Chapter',
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
                                                color: Color(0xFFBE5757)),
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
                                                  top: 7, left: 5),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/material-symbols_location-on.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 5),
                                              child: Text(
                                                'Location',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 4),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/tabler_calendar-exclamation.png',
                                                    fit: BoxFit.contain),
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
                                                    color: const Color(
                                                        0xFF6E7191)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 60),
                                      child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                              'assets/images/SafetyOne.png',
                                              fit: BoxFit.contain)),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 45, left: 60),
                                      child: Text(
                                        '5 spots left',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFFBE5757)),
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
                        margin: EdgeInsets.only(top: 15, bottom: 10),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                      child: Text(
                                        'Red Alert Local Chapter',
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
                                                color: Color(0xFFBE5757)),
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
                                                  top: 7, left: 5),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/material-symbols_location-on.png',
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 5),
                                              child: Text(
                                                'Location',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Questrial',
                                                    color: const Color(
                                                        0xFF6E7191)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 4),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/tabler_calendar-exclamation.png',
                                                    fit: BoxFit.contain),
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
                                                    color: const Color(
                                                        0xFF6E7191)),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 70),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                            'assets/images/RedAlert.png',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 65, left: 70),
                                      child: Text(
                                        '5 spots left',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFFBE5757)),
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
              ]),
            ),
          ));
    });
  }
}
