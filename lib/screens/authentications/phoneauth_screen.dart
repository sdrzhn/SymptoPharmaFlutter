// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/phoneauth_service.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneAuthScreen extends StatefulWidget {
  static const String id = 'phone-auth-screen';
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {

  bool validate = false;

var countryCodeController = TextEditingController(text: '+7');
var phoneNumberController = TextEditingController();

// showAlertDialog(BuildContext context){
//   AlertDialog alert = AlertDialog(
//     content: Row(
//       // ignore: prefer_const_literals_to_create_immutables
//       children: [
//         CircularProgressIndicator(),
//         SizedBox(width: 8,),
//         Text('Пожалуйста  подождите')
//       ],
//     ),
//   );

//   showDialog(barrierDismissible: false, context: context, builder: (BuildContext context){
//     return alert;
//   });
// }

PhoneAuthService _service = PhoneAuthService();

@override
void dispose(){
  // showAlertDialog(context);
  super.dispose();
}

// phoneAuthentication(number){
//   // ignore: avoid_print
//   print(number);
// }


  // String counterText='0';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Войти', style: GoogleFonts.manrope(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: 40,),
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff6ebe81),
              child: Icon(CupertinoIcons.person_alt_circle, color: Colors.green,  size: 35),    
            ),
            SizedBox(height: 12,),
            Text("Номер телефона", style: GoogleFonts.manrope(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 12,),
            Text('Мы отправим код подтверждения на ваш телефон', style: GoogleFonts.manrope(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: countryCodeController,
                    enabled: false,
                    decoration: InputDecoration(
                      counterText: '10',
                      labelText: 'Страна'
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    onChanged: (value) {
                      if(value.length==10){
                        setState(() {
                          validate = true;
                        });
                      }if(value.length<10){
                        setState(() {
                          validate = false;
                        });
                      }
                    },
                    autofocus: true,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.only(bottom: 23, top: 23), 
                      labelText: 'Номер',
                    hintText: 'Введите свой номер телефона',
                    hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: AbsorbPointer(
            absorbing: validate ? false : true,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: validate 
              ? MaterialStatePropertyAll<Color>(Color(0xff6ebe81)) 
              : MaterialStateProperty.all(Colors.grey)),
              onPressed: () { 
                String number = 
                '${countryCodeController.text}${phoneNumberController.text}';
                // showAlertDialog(context);

                _service.verifyPhoneNumber(context, number);
                // phoneAuthentication  (number);
               },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Следующее', style: GoogleFonts.manrope(color: Colors.white, fontSize: 15,)),
              )),
          ),
        ),
      ),
    );
  }
}