import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets1/auth_ui.dart';

class LoginPage extends StatelessWidget {
  static const String id = 'login-screen';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: SizedBox(
            height: 270,
            width: 270,
            child: Column(
              children: [
                const SizedBox(height: 25, width: 25,),
                Image.asset('assets/Icon.png'),
                const SizedBox(height: 2,),
                Text('Добро пожаловать!', style: GoogleFonts.manrope(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )
                )
              ],
            ),
          ),),
          // ignore: avoid_unnecessary_containers
          Expanded(child: Container(
            child: const AuthUi()
          ),),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child:  Text('If you continue, you are accepting\nTerms and Conditiond and Privacy Policy',
            textAlign:TextAlign.center, style: TextStyle(color: Colors.black38, fontSize: 10)),
            
          )
       
        ],
      ),
    );
  }
}