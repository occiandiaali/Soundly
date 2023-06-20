import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:soundly/src/pages/audio/audio_home.dart';
import 'package:soundly/src/pages/chat/chat_home.dart';
import 'package:soundly/src/pages/profile/profile_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;
  bool _show = true;

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
  void initState() {
    super.initState();
    handleScroll();
  }

  void showFAB() {
    setState(() {
      _show = true;
    });
  }
  void hideFAB() {
    setState(() {
      _show = false;
    });
  }

  void handleScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        hideFAB();
      }
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        showFAB();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(() { });
    super.dispose();
  }

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
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.deepOrange,
      //   items: const<BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.surround_sound_rounded),
      //       label: 'Sounds'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.chat_bubble),
      //         label: 'Chats'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.manage_accounts_rounded),
      //         label: 'Profile'
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onNavTabItemTap,
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: _show,
        child: Container(
          margin: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 6.0),
          height: 64,
          // decoration: const BoxDecoration(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(24),
          //     topRight: Radius.circular(24)
          //   )
          // ),
          child: BottomNavigationBar(
            elevation: 2,
            selectedItemColor: Colors.deepOrange,
            items: const<BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.surround_sound_rounded),
                  label: 'Sounds'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.edit_road_rounded),
                  label: 'Record'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts_rounded),
                  label: 'Profile'
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onNavTabItemTap,
          ),
        ),
      ),
    );
  }
}

