import 'package:flutter/material.dart';
import 'package:soundly/src/pages/audio/audio_home.dart';
import 'package:soundly/src/pages/chat/chat_home.dart';
import 'package:soundly/src/pages/profile/profile_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _selectedIndex = 0;

  void _onNavTabItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _screens = <Widget>[
    AudioHomePage(),
    ChatHomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xFFe63946), Colors.black.withOpacity(0.5)],
              stops: const [0.0, 0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.repeated,
            )
        ),
        child: Center(
          child: _screens.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.surround_sound_rounded),
            label: 'Sounds'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Chats'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts_rounded),
              label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavTabItemTap,
      ),
    );
  }
}

