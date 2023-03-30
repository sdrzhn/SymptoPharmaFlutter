// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  final String number;

  const OTPScreen({super.key, required this.number});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
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
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Icon(Icons.edit))
                 ],
               ),


            ],

          ),
      ),
    );
  }

}