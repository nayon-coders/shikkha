import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/confirm-otp.dart';
import 'package:shikkha_new/view/forget-password/foreget-pass-otp.dart';
import 'package:shikkha_new/view/login-screen.dart';
import 'package:shikkha_new/view/student/sflash-screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../utility/normal-text.dart';


class ForgetPassEnterNumber extends StatefulWidget {
  const ForgetPassEnterNumber({Key? key}) : super(key: key);

  @override
  State<ForgetPassEnterNumber> createState() => _ForgetPassEnterNumberState();
}

class _ForgetPassEnterNumberState extends State<ForgetPassEnterNumber> {

  //TODO: Timer count down sunction
  final _contact = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColor.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("assets/image/Vector.png", width: width, height: height/3, fit: BoxFit.fill,),

                Positioned(
                  top: 7.h,
                  left: 20,
                  child: SizedBox(width:width/2, child: MediunText(text:  "Forget Password", color: Colors.white, size: 25.sp,)),
                ),
                const SizedBox(height: 30,),
                Positioned(
                  top: 20.h,
                  left: 20,
                  child:  MediunText(text: "Please confirm and continue", color: Colors.white70, size: 13.sp,),
                )
              ],
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.only(left: 20, right: 20, top: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    //TODO: OPT Form Field
                   Icon(
                     Icons.call,
                     size: 40.sp,
                       color: Colors.grey,
                   ),
                    MediunText(text: "Please enter your phone number", size: 15.sp,),

                    SizedBox(height: 5.h,),

                    Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MediunText(text: "Phone Number", size: 12.sp,),
                            SizedBox(height: 5,),
                            TextFormField(
                              controller: _contact,
                              validator: (val){
                                if(val!.isEmpty){
                                  return "Number field much not be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Contact Number",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      width: 1,color:  appColor.blue
                                  ),
                                ),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: appColor.grey,
                                ),
                                filled: true,
                                fillColor: appColor.grey_200,
                              ),
                            ),
                          ],
                        ),
                    )


                  ],
                ),
              ),
            ),

            SizedBox(height: 17.h,),
            Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassOTP()));
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
