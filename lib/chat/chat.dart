import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/chat/chatconvo.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  final List<String> items = List.generate(5, (index) => "Item $index");
  final List<String> name = [
    'Red Alert',
    'Mike',
    'Maria',
    'Joe',
    'Safety Check'
  ];
  final List<String> logo = [
    'assets/images/RedOne.png',
    'assets/images/MikeOne.png',
    'assets/images/Maria.png',
    'assets/images/Joe.png',
    'assets/images/SafetyOne.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/name.png'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 15, 0.0, 0.0),
                alignment: Alignment.topLeft,
                child: Text(
                  'MESSAGES',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF0079BD),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Questrial',
                  ),
                ),
              ),
              SizedBox(
                height: 115.0,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => chatConvoPage()),
                                );
                              },
                              child: Container(
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
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => chatConvoPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 350,
                    height: 100,
                    child: Material(
                      elevation: 3,
                      color: Colors.white,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15, top: 20),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.blue,
                                    child: Image.asset(
                                        'assets/images/RedAlert.png',
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 30, left: 15),
                                      child: Text(
                                        'Red Alert Volunteers',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFF6E7191)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3, left: 15),
                                      child: Text(
                                        "You: Let's do this!",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Questrial',
                                            color: const Color(0xFF6E7191)),
                                      ),
                                    ),
                                  ],
                                ),
                                // Column(
                                //   children: [],
                                // )
                              ],
                            ),
                          ],
                        ),
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
