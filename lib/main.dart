// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authentications/phoneauth_screen.dart';
import 'package:flutter_application_1/screens/login_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(////;
      theme: ThemeData(
        fontFamily: 'Manrope'
              ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        PhoneAuthScreen.id:(context) => const PhoneAuthScreen(),
        // PhoneAuthScreen.id:(context) => const PhoneAuthScreen(),
      },
    );}}
