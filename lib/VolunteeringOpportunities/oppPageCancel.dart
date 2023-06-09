import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/volunteeringOpportunities.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/organizationPage.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/opportunitiesPage.dart';
import 'package:solutions_challenge_app/chat/chatconvo.dart';

class OppCancelPage extends StatefulWidget {
  const OppCancelPage({super.key});

  @override
  State<OppCancelPage> createState() => _OppCancelPageState();
}

class _OppCancelPageState extends State<OppCancelPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0079BD),
        ),
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
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  '3 volunteer(s) in this Opportunity',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(300, 45),
                            textStyle: TextStyle(fontSize: 14),
                            primary: Color(0xFFBE5757),
                            side:
                                BorderSide(width: 2, color: Color(0xFFBE5757)),
                            // onPrimary: Colors.white),
                          ),
                          child: Text(
                            'Cancel Volunteer Opportunity',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Questrial',
                                color: Color(0xFFBE5757)),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: Color(0xFF0079BD),
                                  title: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'Are you sure\nyou want to Cancel?',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Questrial',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  content: new SingleChildScrollView(
                                    child: new ListBody(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                        ),
                                        new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new Container(
                                                alignment: Alignment.center,
                                                margin: EdgeInsets.only(
                                                    right: 10, top: 10),
                                                child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                      minimumSize:
                                                          Size(100, 45),
                                                      textStyle: TextStyle(
                                                          fontSize: 14),
                                                      primary: Colors.white,
                                                      onPrimary: Colors.white),
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Questrial',
                                                        color:
                                                            Color(0xFF0079BD)),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                OpportunitiesPage()));
                                                  },
                                                )),
                                            new Container(
                                                alignment: Alignment.center,
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 10),
                                                child: OutlinedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                    minimumSize: Size(100, 45),
                                                    textStyle:
                                                        TextStyle(fontSize: 14),
                                                    primary: Colors.white,
                                                    side: BorderSide(
                                                        width: 2,
                                                        color: Colors.white),
                                                    // onPrimary: Colors.white),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context,
                                                            rootNavigator: true)
                                                        .pop('dialog');
                                                  },
                                                  child: Text('No'),
                                                ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 15),
                            child: Text(
                              'Location: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              'Sorsogon City',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 15),
                            child: Text(
                              'Date: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFF6E7191)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
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
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 15),
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
                            margin: EdgeInsets.only(top: 8),
                            child: Text(
                              'High',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Questrial',
                                  color: const Color(0xFFBE5757)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 14),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What we'll be doing",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Questrial',
                              color: const Color(0xFF6E7191)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 14),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'As a volunteer, you will be providing on-scene patient care and treatment, and assist transporting patients to medical facilities.',
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              fontFamily: 'Questrial',
                              color: const Color(0xFF6E7191)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 14),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Discussion",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Questrial',
                              color: const Color(0xFF6E7191)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 14),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Chat with your fellow volunteers below. Get to know, ask questions, or verify details.',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Questrial',
                              color: const Color(0xFF6E7191)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Write a message...",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF0079BD),
                              ),
                              prefixIcon: Icon(Icons.send),
                              prefixIconColor: Color(0xFF0079BD)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chatConvoPage()),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      );
    });
  }
}
