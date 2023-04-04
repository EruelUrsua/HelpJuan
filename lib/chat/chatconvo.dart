import 'package:flutter/material.dart';

class chatConvoPage extends StatefulWidget {
  const chatConvoPage({super.key});

  @override
  State<chatConvoPage> createState() => _chatConvoPageState();
}

class _chatConvoPageState extends State<chatConvoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Material(
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/images/RedAlert.png',
                        fit: BoxFit.contain),
                  ),
                  shape: const CircleBorder(side: BorderSide.none)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Red Alert Volunteers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 2),
                  child: Text(
                    '7 Online, from 12 people',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // SingleChildScrollView(),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 0),
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
                      color: Color(0xFF58A7B9),
                    ),
                    prefixIcon: Icon(Icons.emoji_emotions),
                    prefixIconColor: Color(0xFF58A7B9)),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
