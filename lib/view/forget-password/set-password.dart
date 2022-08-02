import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/forget-password/foreget-pass-otp.dart';
import 'package:sizer/sizer.dart';
import '../../utility/normal-text.dart';
import '../login-screen.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  //TODO: Timer count down sunction
  final _pass = TextEditingController();
  final _ConfirmPass = TextEditingController();

  bool _passwordVisible = false;


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
                  child: SizedBox(width:width/2, child: MediunText(text:  "Reset Password", color: Colors.white, size: 25.sp,)),
                ),
                const SizedBox(height: 30,),
                Positioned(
                  top: 20.h,
                  left: 20,
                  child:  MediunText(text: "Please reset your password", color: Colors.white70, size: 13.sp,),
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

                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            obscureText: _passwordVisible,
                            controller: _pass,
                            validator: (val){
                              if(val!.isEmpty){
                                return " The password field much not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "New Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(
                                    width: 1,color: appColor.blue
                                ),


                              ),

                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: appColor.grey,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ?  Icons.visibility : Icons.visibility_off,
                                  color: appColor.grey,
                                ), onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              ),

                              filled: true,
                              fillColor: appColor.grey_200,
                            ),

                          ),
                          SizedBox(height: 15,),

                          TextFormField(
                            obscureText: _passwordVisible,
                            controller: _ConfirmPass,
                            validator: (val){
                              if(val!.isEmpty){
                                return "Confirm password field much not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(
                                    width: 1,color: appColor.blue
                                ),


                              ),

                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: appColor.grey,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ?  Icons.visibility : Icons.visibility_off,
                                  color: appColor.grey,
                                ), onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              ),

                              filled: true,
                              fillColor: appColor.grey_200,
                            ),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Color(0xFF87898E),
                            size: 15.sp,
                          ),
                          SizedBox(width: 5,),
                          SizedBox( width: width/1.5, child: MediunText(text: "Minimum 6 characters, at least one number, and special chareacter", size: 12.sp,  color: Color(0xFF87898E),))
                        ],

                      ),
                    )






                  ],
                ),
              ),
            ),

            SizedBox(height: 15.h,),
            Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: () {
                    _showSuccessPoup();
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
                          "Reset Password".toUpperCase(),
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
  void _showSuccessPoup(){
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 30.0),
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

            ),
            height: 330,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset("assets/image/success.png",width: 150,height: 150,),
                ),
                SizedBox(height: 5.h,),
                BigText(text: "Successfull",size: 15.sp, color: appColor.blue,),
                SizedBox(height: 5.h,),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: appColor.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ]
                    ),
                    child: Center(child: MediunText(text: "Done", size: 12.sp, color: appColor.white,)),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

}
