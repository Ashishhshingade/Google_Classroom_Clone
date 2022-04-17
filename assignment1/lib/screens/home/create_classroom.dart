import 'package:assignment1/models/user.dart';
import 'package:assignment1/services/database.dart';
import 'package:assignment1/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateClass extends StatefulWidget {
  const CreateClass({Key? key}) : super(key: key);

  @override
  _CreateClassState createState() => _CreateClassState();
}

class _CreateClassState extends State<CreateClass> {

  String _className = '';
  String _section = '';
  String _room = '';
  String _subject = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //to get the current user
    final _user = Provider.of<CustomUser?>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.cancel_outlined)),
        title: const Text('Create Class',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontFamily: "Roboto"),
        ),
        actions: [
          TextButton(
              onPressed: (){
                DatabaseService(_user!.uid).updateClassroomsData(
                    _className, '', _user.name, _section, _room, _subject);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
              ),
              child: const Text('Create',style: TextStyle(fontSize: 18,color: Colors.white),)
          ),
          PopupMenuButton(
              itemBuilder: (context)=>
              [PopupMenuItem(
                  child: TextButton(onPressed: (){},
                    child: const Text('Send Google Feedback',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),)
                  )
              ),]
          )
        ],
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Form(
          key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: textInputDecoration.copyWith(
                    hintText: 'Class name (required)',
                  ),
                  validator: (val)=>val!.isEmpty ? 'Enter Class name':null,
                  onChanged: (val){
                    setState(() {
                      _className=val;
                    });
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: textInputDecoration.copyWith(
                    hintText: 'Section',
                  ),
                  onChanged: (val){
                    setState(() {
                      _section=val;
                    });
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: textInputDecoration.copyWith(
                    hintText: 'Room',
                  ),
                  onChanged: (val){
                    setState(() {
                      _room=val;
                    });
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: textInputDecoration.copyWith(
                    hintText: 'Subject',
                  ),
                  onChanged: (val){
                    setState(() {
                      _subject=val;
                    });
                  },
                ),

              ],
            )
        ),
      ),
    );
  }
}
