import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/student/sflash-screen.dart';
import 'package:sizer/sizer.dart';

import '../utility/normal-text.dart';

class ConfirmOtp extends StatefulWidget {
  const ConfirmOtp({Key? key}) : super(key: key);

  @override
  State<ConfirmOtp> createState() => _ConfirmOtpState();
}

class _ConfirmOtpState extends State<ConfirmOtp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/image/Vector.png", width: width, height: 30.h, fit: BoxFit.fill,),
            Image.asset("assets/image/logo.png",height: 130, width: 220,),
            Padding(
              padding:  EdgeInsets.only(left: 20, right: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //TODO: body
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nanu"
                        )
                      ),
                      TextSpan(
                        text: "Your School",
                          style: TextStyle(
                              color: Color(0xFFEC1B1B),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Nanu"
                          )
                      )
                    ]
                  )),
                  SizedBox(height: 2.h),
                  Center(child: MediunText(text: "Our mission is to make you more productive. This will onlu take a minute.", size: 15.sp, textAlign: TextAlign.center,))



                ],
              ),
            ),
            SizedBox(height: 20.h),
            Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>SflashScreen()));
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
                          "Let's do it".toUpperCase(),
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
