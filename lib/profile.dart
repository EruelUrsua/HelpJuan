import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/oppPageCancel.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/organizationPage.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final List<String> items = List.generate(5, (index) => "Item $index");
  final List<String> name = [
    'Red Alert',
    'Safety Check',
    'Bayanihan',
    'Red Alert',
    'Safety Check'
  ];
  final List<String> logo = [
    'assets/images/RedOne.png',
    'assets/images/SafetyOne.png',
    'assets/images/BayanihanOne.png',
    'assets/images/RedOne.png',
    'assets/images/SafetyOne.png'
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/name.png'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/Settings.png'),
              onPressed: () {
                // do something
              },
            )
          ],
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xFF58A7B9),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- Welcome text
                    Container(
                      color: const Color(0xFF58A7B9),
                      width: 550,
                      height: MediaQuery.of(context).size.height * 0.035,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text(
                              'Welcome, Julia!',
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

                    // --- Hours Volunteered text
                    Container(
                      color: const Color(0xFF58A7B9),
                      width: 550,
                      height: MediaQuery.of(context).size.height * 0.110,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 26.0, bottom: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hours Volunteered',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Questrial',
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '145h',
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Questrial',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.blue,
                            child: Image.asset('assets/images/UserX.png',
                                fit: BoxFit.contain),
                          ),
                          SizedBox(width: 50),
                        ],
                      ),
                    ),
                  ], // stop here
                ),

// Your opportunity text
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 15, 0.0, 0.0),
                  child: Text(
                    'Your Opportunity',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Questrial',
                    ),
                  ),
                ),

//Date text
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0),
                  child: Text(
                    'October 25, 2022',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xFF6E7191),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Questrial',
                    ),
                  ),
                ),

// --- Your Opportunity box
                Container(
                  margin: EdgeInsets.only(top: 6, left: 20),
                  width: 350,
                  height: 150,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OppCancelPage()),
                      );
                    },
                    child: Material(
                      elevation: 3,
                      color: Colors.white,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.blue,
                            child: Image.asset('assets/images/RedAlert.png',
                                fit: BoxFit.contain),
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // --- Date text
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Date:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                    Text(
                                      ' 11PM - 5AM October 25, 2022',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // --- Location text
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Location',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                    Text(
                                      ' Quezon City',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // --- name of Org
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, right: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Red Alert Local Chapter',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // --- Service
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Emergency Services',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // --- Difficulty text
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Difficulty: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: const Color(0xFF6E7191),
                                      ),
                                    ),
                                    Text(
                                      ' High',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Questrial',
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

// --- LOGO
                            ], // stop here
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

// Upcoming opportunities text
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20, 0.0, 0.0),
                  child: Text(
                    'Upcoming Opportunities',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Questrial',
                    ),
                  ),
                ),

// Upcoming opp box
                Container(
                  height: 180.0,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 0.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OppCancelPage()),
                                );
                              }, // should not be moved
                              child: Container(
                                margin: EdgeInsets.only(top: 6, left: 20),
                                width: 350,
                                height: 150,
                                child: Material(
                                  elevation: 3,
                                  color: Colors.white,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.blue,
                                        child: Image.asset(
                                            'assets/images/RedAlert.png',
                                            fit: BoxFit.contain),
                                      ),
                                      SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
// --- Date text
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0, right: 26.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Date:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                                Text(
                                                  ' 11PM - 5AM October 25, 2022',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // --- Location text
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, right: 26.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Location',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                                Text(
                                                  ' Quezon City',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // --- name of Org
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0, right: 26.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Red Alert Local Chapter',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // --- Service
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, right: 26.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Emergency Services',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // --- Difficulty text
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, right: 26.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Difficulty: ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color:
                                                        const Color(0xFF6E7191),
                                                  ),
                                                ),
                                                Text(
                                                  ' High',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'Questrial',
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ], // should not be moved
                        ),
                      );
                    },
                  ),
                ),

// --- Your organizations text
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 5, 0.0, 0.0),
                  child: Text(
                    'Your Organizations',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Questrial',
                    ),
                  ),
                ),

// --- Your organizations circle
                Container(
                  height: 115.0,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 15.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrganizationPage()),
                                );
                              },
                              child: Material(
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(logo[index],
                                        fit: BoxFit.contain),
                                  ),
                                  elevation: 3,
                                  shape: const CircleBorder(
                                      side: BorderSide.none)),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              name[index], // name of org
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ], //stop here
            ),
          ),
        ),
      );
    });
  }
}
