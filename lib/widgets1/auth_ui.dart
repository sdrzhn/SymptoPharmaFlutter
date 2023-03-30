// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authentications/phoneauth_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        // ignore: duplicate_ignore, duplicate_ignore
        children: [
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(50),
          ),
        ),
                backgroundColor: MaterialStateProperty.all(Color(0xff6ebe81)),
              ),
              onPressed: (){
                Navigator.pushNamed(context, PhoneAuthScreen.id);
              }, 
              child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 57),),
                const Icon(Icons.phone_android_outlined, color: Colors.white),
                const SizedBox(width: 8),
                Text('Продолжить с телефона', style: GoogleFonts.manrope(
                  color: Colors.white
                ))
              ],
            ),),
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: SignInButton(
              Buttons.Google,
              text: ('Продолжить с Google'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {},
              ),
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: SignInButton(
              Buttons.FacebookNew,
              text: ('Продолжить с Facebook'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50
                  )),
              onPressed: (){}),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: const Text('Или', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,)),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Войти с Email', 
            style: TextStyle(
              color: Color(0xff6ebe81), 
              fontWeight: FontWeight.w500, 
              fontSize: 19,
              decoration: TextDecoration.underline)),
          ), 
          // ignore: prefer_const_constructors
          
        ],
      ),
    );  }

}