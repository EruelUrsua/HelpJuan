import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelpJuan'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
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
                child: Material(
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // --- Date text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                                Text(
                                  ' 11PM - 5AM October 25, 2022',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Location text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                                Text(
                                  ' Sorsogon City',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- name of Org
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Service
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Difficulty text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Difficulty: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // --- Date text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                                Text(
                                  ' 11PM - 5AM October 25, 2022',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Location text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                                Text(
                                  ' Sorsogon City',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- name of Org
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Red Cross Sorsogon Chapter',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Service
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Emergency Services',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // --- Difficulty text
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Difficulty: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    fontFamily: 'Questrial',
                                    color: const Color(0xFF89C0CC),
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

// --- Your organizations text
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 0.0, 0.0),
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
