import 'package:assignment1/screens/home/classroom/people.dart';
import 'package:assignment1/screens/home/classroom/stream_tab.dart';
import 'package:flutter/material.dart';

import 'classroom/classwork_tab.dart';
// import 'package:googleclassroom_clone/screens/classroom/people_tab.dart';
//
// import 'classroom/classwork_tab.dart';
// import 'classroom/stream_tab.dart';

class ClassRoomPage extends StatefulWidget {
  AssetImage bannerImg;
  String className;
  Color uiColor;

  ClassRoomPage(
      {required this.className,
      required this.bannerImg,
      required this.uiColor});

  @override
  _ClassRoomPageState createState() => _ClassRoomPageState();
}

class _ClassRoomPageState extends State<ClassRoomPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String className = widget.className;
    AssetImage bannerImg = widget.bannerImg;
    final tabs = [
      StreamTab(
        bannerImg: bannerImg,
        className: className,
      ),
      ClassWork(),
      PeopleTab()
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black87,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Stream',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Classwork',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
