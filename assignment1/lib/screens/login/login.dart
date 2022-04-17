import 'package:assignment1/services/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/classroom.png',),
            const SizedBox(height: 10,),
            const Text('Google Classroom',
              style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            const Text('Helping educators and studnets to communicate, save time and stay organised.',
              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),),
            const SizedBox(height: 30,),
            FloatingActionButton.extended(
                onPressed: () {
                  final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                  provider.googleLogin();
                  },
                label: const Text('Get Started')),
          ],
        ),
      ),
    );
  }
}
