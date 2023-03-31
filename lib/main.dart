import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/Login/widget_tree.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/volunteeringOpportunities.dart';
import 'package:solutions_challenge_app/profile.dart';
import 'package:solutions_challenge_app/bnav.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelpJuan',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: const Color(0xFF58A7B9)),
      ),
      home:
          WidgetTree(), //<------------------ change the class if you need to test
    );
  }
}

// class test extends StatelessWidget {
//   const test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Nav();
//     // return Profile();
//   }
// }
