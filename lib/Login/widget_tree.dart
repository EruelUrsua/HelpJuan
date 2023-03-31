import 'package:firebase_auth/firebase_auth.dart';
import 'package:solutions_challenge_app/Backend/authentication_service.dart';
import 'package:solutions_challenge_app/Backend/home_page.dart';
import 'package:solutions_challenge_app/bnav.dart';
import 'signup.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Authentication().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Nav();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
