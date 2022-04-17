import 'package:assignment1/screens/home/class_room_page.dart';
import 'package:assignment1/screens/home/create_classroom.dart';
import 'package:assignment1/screens/home/drawer.dart';
import 'package:assignment1/services/google_sign_in.dart';
import 'package:assignment1/shared/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/classroom.dart';

class Classes extends StatefulWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    //get the current logged in user
    final _user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Google Classroom',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black87,
              fontFamily: "Roboto"
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(_user!.photoURL.toString()),
          ),
          //IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded)),
          PopupMenuButton(
              //offset: Offset(0, -10),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Refresh',
                                style: TextStyle(
                                    color: Colors.black,fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',fontSize: 14
                                )
                            )
                        )
                    ),
                    PopupMenuItem(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Send Google Feedback',
                              style: TextStyle(
                                  color: Colors.black,fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,fontSize: 14
                              ),
                            )
                        )
                    ),
                PopupMenuItem(
                    child: TextButton(onPressed: (){
                      final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                      provider.logOut();
                    },
                      child: Text('sign out'),))
                  ])
        ],
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      drawer: CustomDrawer(),
      body: ListView.builder(
          itemCount: classRoomList.length,
          itemBuilder: (context, int index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ClassRoomPage(
                      uiColor: classRoomList[index].uiColor,
                      className: classRoomList[index].className,
                      bannerImg: bannerImageList[index],
                      ))),
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.orange,
                    ),
                    child: Image(
                      image: bannerImageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    width: 220,
                    child: Text(
                      classRoomList[index].className,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 58, left: 30),
                    child: Text(
                      classRoomList[index].description,
                      style: TextStyle(
                          fontSize: 14, color: Colors.white, letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125, left: 30),
                    child: Text(
                      classRoomList[index].creator,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 370),
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      splashColor: Colors.white54,
                      onPressed: () {},
                      iconSize: 25,
                    ),
                  )
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet(context);
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.indigo,
        ),
      ),
    );
  }
}

void bottomSheet(context){
  showModalBottomSheet(
      context: context, builder: (BuildContext bc){
    return Container(
      child: Wrap(
        children: <Widget>[
          ListTile(
              title:Text('Create Class'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateClass()));
              }
          ),
          ListTile(
            title: Text('Join Class'),
            onTap: (){},
          )
        ],
      ),
    );
  }
  );
}
