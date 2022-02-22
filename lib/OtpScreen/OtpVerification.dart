

import 'package:assignmentoyelabs/AddressScreen/addressscreen.dart';
import 'package:assignmentoyelabs/OtpScreen/widgets/HeadingsText.dart';

import 'package:assignmentoyelabs/SignUpScreen/widgets/Buttons.dart';
import 'package:assignmentoyelabs/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../LoginScreen/widgets/AppBar.dart';

class Otpverification extends StatelessWidget {
  const Otpverification({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const NTAppBar(),
            SizedBox(height: 49,),
            Image(image: AssetImage('assets/otp1.png')),
            SizedBox(height: 66,),
            HeadingSection(),
            SizedBox(height: 71,),
            Column(
        children: [
          Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: OTPTextField(
        length: 4,
        width: MediaQuery.of(context).size.width,
        fieldWidth: 40,
        style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: 'Raleway'
        ),
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldStyle: FieldStyle.underline,
        onCompleted: (pin) {
        // ignore: avoid_print
        print("Completed: " + pin);
        },
        ),
                ),
        ],
      ),
            SizedBox(height: 26,),
            InkWell(
              onTap: () {},
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'OTP not recived? ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xff9c9c9c),
                      letterSpacing: 0.5,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                TextSpan(
                    text: "RESEND OTP",
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontFamily: 'Inter',
                      color: Color(0xff5A77FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
              ])),
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.only(left: 27,right: 26),
              child: MyButton(text: 'VERIFY & PROCEED', 
              color: Colors.black,
              textColor: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500, 
              function: ()async{navigatorKey.currentState!
                        .push(MaterialPageRoute(builder: (builder) {
                      return Locationpage();}),
            );}
               )) ],
        ),
        
      ),
    );
  }
}