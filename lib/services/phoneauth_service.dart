// ignore_for_file: unused_local_variable, prefer_function_declarations_over_variables, avoid_print, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authentications/otp_screen.dart';

class PhoneAuthService {
FirebaseAuth auth = FirebaseAuth.instance;


Future<void>verifyPhoneNumber(BuildContext context, number)async{
  // ignore: prefer_function_declarations_over_variables
  final PhoneVerificationCompleted verificationCompleted = 
  (PhoneAuthCredential credential)async{
    await auth.signInWithCredential(credential);
  };

  final PhoneVerificationFailed verificationFailed = (FirebaseAuthException e){
    if (e.code == 'invalid-phone-number') {
      print('Указанный номер телефона недействителен.');
    }
    print('Ошибка заключается в ${e.code}');
  };

  final PhoneCodeSent codeSent = (String verificationId, int? resendToken)async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen(number: number, verificationId: verificationId,)));
  };

  try{
    auth.verifyPhoneNumber(phoneNumber: number, 
    verificationCompleted: verificationCompleted, 
    verificationFailed: verificationFailed, 
    codeSent: codeSent, 
    timeout: const Duration(seconds: 60),
    codeAutoRetrievalTimeout: (String verId){
      print(verId);
    });
  }catch(e){
    print('Ошибка ${e.toString()}');
  }

}
}