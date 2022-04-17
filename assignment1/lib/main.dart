import 'package:assignment1/models/user.dart';
import 'package:assignment1/screens/home/create_classroom.dart';
import 'package:assignment1/screens/login/login.dart';
import 'package:assignment1/screens/wrapper.dart';
import 'package:assignment1/services/auth.dart';
import 'package:assignment1/services/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(StreamProvider<CustomUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().userStream,
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>GoogleSignInProvider(),
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
