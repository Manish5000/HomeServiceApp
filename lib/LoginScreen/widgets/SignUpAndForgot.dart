import 'package:assignmentoyelabs/OtpScreen/OtpVerification.dart';
import 'package:assignmentoyelabs/main.dart';
import 'package:flutter/material.dart';

import '../../SignUpScreen/widgets/Buttons.dart';

class SignUpAndForgotPassword extends StatelessWidget {
  const SignUpAndForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 26.0, right: 26),
          child: MyButton(
              text: "LOGIN",
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              textColor: Colors.white,
              function: () async { navigatorKey.currentState!
                        .push(MaterialPageRoute(builder: (builder) {
                      return Otpverification();
                        }));
                      }),
        ),
        SizedBox(height: 20,),
        Text('Forgot Password?',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600,fontFamily: 'Inter'),)
      ],
      
    );
  }
}
