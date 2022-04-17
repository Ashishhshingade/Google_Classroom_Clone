import 'package:assignment1/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{
  //
  final googleSignIn = GoogleSignIn();

  //private variable to store info regarding user eg profile name etc
  GoogleSignInAccount? _user;

  //to get user
  GoogleSignInAccount get user => _user!;

  //method for google log in
  Future googleLogin() async {
    try{
    final googleUser = await googleSignIn.signIn();
    if(googleUser==null) return;
    _user=googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,idToken:googleAuth.idToken );

    await FirebaseAuth.instance.signInWithCredential(credential);           //sign in firebase

    await DatabaseService(FirebaseAuth.instance.currentUser!.uid.toString())
        .updateUsersData(
        user.displayName.toString(), user.email.toString(),user.photoUrl.toString());

    notifyListeners(); //to notify for ui changes
    }
    catch(e){
      e.toString();
    }
  }
  Future logOut()async{
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}