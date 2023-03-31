import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/volunteeringOpportunities.dart';
import 'package:solutions_challenge_app/profile.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    VolunteeringOpportunitiesPage(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(canvasColor: Color(0xFF58A7B9)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Volunteer',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Chat',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            selectedItemColor: Colors.white,
          ),
        ));
  }
}
