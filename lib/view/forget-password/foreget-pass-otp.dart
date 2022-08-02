import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/confirm-otp.dart';
import 'package:shikkha_new/view/forget-password/set-password.dart';
import 'package:shikkha_new/view/login-screen.dart';
import 'package:shikkha_new/view/student/sflash-screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../utility/big-text.dart';
import '../../utility/normal-text.dart';


class ForgetPassOTP extends StatefulWidget {
  const ForgetPassOTP({Key? key}) : super(key: key);

  @override
  State<ForgetPassOTP> createState() => _ForgetPassOTPState();
}

class _ForgetPassOTPState extends State<ForgetPassOTP> {



  @override
  void initState(){
    super.initState();
    startTimer();
  }

  //TODO: Timer count down sunction
  late Timer _timer;
  int _start = 60;
  var _reSend;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _reSend = "Resend Code";
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("assets/image/Vector.png", width: width, height: height/3, fit: BoxFit.fill,),

                Positioned(
                  top: 10.h,
                  left: 20,
                  child: SizedBox(width:width/2, child: MediunText(text:  "Confirm OTP", color: Colors.white, size: 25.sp,)),
                ),
                const SizedBox(height: 30,),
                Positioned(
                  top: 16.h,
                  left: 20,
                  child:  MediunText(text: "Please confirm and continue", color: Colors.white70, size: 15,),
                )
              ],
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.only(left: 20, right: 20, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Code has been send to ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: appColor.black
                                )
                            ),
                            TextSpan(
                                text: " +8801 ******99",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: Color(0xFF597CF8)
                                )
                            ),

                          ]
                      ),
                    ),

                    SizedBox(height:5.h,),
                    //TODO: OPT Form Field
                    OtpTextField(
                      numberOfFields: 4,
                      fieldWidth: 60,
                      borderColor: Color(0xFFEFF7FF),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                      }, // end onSubmit
                    ),

                    SizedBox(height: 5.h,),

                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Resend code in ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: appColor.black
                                  )
                              ),
                              TextSpan(
                                  text: _reSend == null ? "$_start":_reSend,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xFF597CF8)
                                  )
                              ),
                              TextSpan(
                                  text: " s",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: appColor.black
                                  )
                              ),
                            ]
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),

            SizedBox(height: 14.h,),
            Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xFFD06EE1),
                            Color(0xFF68ACFA),

                          ]
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Continue".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}
