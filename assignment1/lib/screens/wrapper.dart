import 'package:assignment1/models/user.dart';
import 'package:assignment1/screens/home/classes.dart';
import 'package:assignment1/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//wrapper class will decide which widget to show: home/login page
//depending upon snapshot

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _user = Provider.of<CustomUser?>(context);
    print(_user);
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState== ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }else if(snapshot.hasData){
          return Classes();
        }
        else if (snapshot.hasError){
          print(snapshot.error);
          return const Center(child: Text('something went wrong'),);
        }else {
          return LoginPage();
        }
      }
    );
  }
}

