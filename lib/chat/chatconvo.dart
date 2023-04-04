import 'package:flutter/material.dart';

class chatConvoPage extends StatefulWidget {
  const chatConvoPage({super.key});

  @override
  State<chatConvoPage> createState() => _chatConvoPageState();
}

class _chatConvoPageState extends State<chatConvoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SingleChildScrollView(),
        Container(
          alignment: Alignment.bottomCenter,
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
                  color: Color(0xFF58A7B9),
                ),
                prefixIcon: Icon(Icons.send),
                prefixIconColor: Color(0xFF58A7B9)),
          ),
        ),
      ],
    );
  }
}
