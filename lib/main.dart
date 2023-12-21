import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zenfit/UI/exercise.dart';
import 'package:zenfit/UI/homepage.dart';
import 'package:zenfit/UI/welcome.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   @override
  Widget build (BuildContext context) {
     bool isLoggedIn= false;
     final user = FirebaseAuth.instance.currentUser;
     if(user!=null) isLoggedIn = true;

     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       //home: isLoggedIn ? Home() : welcomePage(),
       home:  Home(),
     );
   }
}