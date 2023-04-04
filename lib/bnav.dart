import 'package:flutter/material.dart';
import 'package:solutions_challenge_app/VolunteeringOpportunities/volunteeringOpportunities.dart';
import 'package:solutions_challenge_app/chat/chat.dart';
import 'package:solutions_challenge_app/profile.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    VolunteeringOpportunitiesPage(),
    profile(),
    chatPage(),
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
          data: Theme.of(context).copyWith(canvasColor: Color(0xFF0079BD)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/volunteer_inactive.png')),
                label: 'Volunteer',
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/profile_inactive.png')),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/chat_inactive.png')),
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
