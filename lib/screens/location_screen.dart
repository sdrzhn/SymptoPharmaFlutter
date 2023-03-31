// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(
        child: Text('Выйти'),
        onPressed: (){
          
        },
      )),
    );
  }

}