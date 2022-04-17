import 'package:flutter/material.dart';

class ChooseClassroom extends StatefulWidget {
  const ChooseClassroom({Key? key}) : super(key: key);

  @override
  _ChooseClassroomState createState() => _ChooseClassroomState();
}

class _ChooseClassroomState extends State<ChooseClassroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        elevation: 8.0,
        child: ListView(),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Google Classroom',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 8,
        backgroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
