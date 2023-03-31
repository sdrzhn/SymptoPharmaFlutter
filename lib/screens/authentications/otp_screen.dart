// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_final_fields, unused_field, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authentications/phoneauth_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  final String number, verificationId;

  const OTPScreen({super.key, required this.number, required this.verificationId});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  var _text1 = TextEditingController();
  var _text2 = TextEditingController();
  var _text3 = TextEditingController();
  var _text4 = TextEditingController();
  var _text5 = TextEditingController();
  var _text6 = TextEditingController();

  
  // Future<void>phoneCredentil(BuildContext context, String otp)async {
  //   FirebaseAuth _auth = FirebaseAuth.instance;
  //   try{
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: widget.verificationId, smsCode: otp);

  //       final User? user = (await _auth.signInWithCredential(credential)).user;

  //       if(user!=null){
  //         Navigator.pushReplacementNamed(context, routeName);
  //       }
  //   }catch(e){
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context){

    final node = FocusScope.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Войти', style: GoogleFonts.manrope(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 40,),
              CircleAvatar(radius: 40,
                backgroundColor: Color(0xff6ebe81),
                child: Icon(CupertinoIcons.person_alt_circle, color: Colors.green,  size: 35),    
              ),
              SizedBox(height: 10,),
              Text('С Возвращением!',
               style: GoogleFonts.manrope(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400)),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Expanded(
                     child: RichText(text: TextSpan(
                      text: 'Мы отправили 6-значный код на ',
                      style: TextStyle(color: Colors.grey, fontSize: 12,),
                      children: [
                        TextSpan(
                          text: widget.number,
                          style: GoogleFonts.manrope(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12,),), 
                      ],
                      
                     ),),
                   ),
                   InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>PhoneAuthScreen(),),);
                    },
                    child: Icon(Icons.edit))
                 ],
               ),
               SizedBox(height: 12,),
               Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text1,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                 Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text2,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                 Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text3,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                 Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text4,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                 Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text5,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                 Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _text6,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                      onChanged: (value) {
                        if(value.length==1){
                          if(_text1.text.length==1){
                            if(_text2.text.length==1){
                              if(_text3.text.length==1){
                                if(_text4.text.length==1){
                                  if(_text5.text.length==1){
                                    if(_text6.text.length==1){
                                      String _otp = '${_text1.text}${_text2.text}${_text3.text}${_text4.text}${_text5.text}${_text6.text}';
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      },
                    ),
                  ),
                ],
               ),
            ],

          ),
      ),
    );
  }

}