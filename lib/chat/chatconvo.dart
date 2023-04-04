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
      children: [SingleChildScrollView(), Container()],
    );
  }
}
