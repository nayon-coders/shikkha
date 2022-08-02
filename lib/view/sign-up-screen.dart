import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/otp-screen.dart';
import 'package:sizer/sizer.dart';

import '../utility/normal-text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _instituteName = TextEditingController();
  final _contact = TextEditingController();
  final _address = TextEditingController();
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
          children: [
            Stack(
              children: [
                Image.asset("assets/image/Vector.png", width: width, height: height/3, fit: BoxFit.fill,),

                Positioned(
                  top: 9.h,
                  left: 20,
                  child: SizedBox(width:width/2, child: MediunText(text:  "Continue with", color: Colors.white, size: 20.sp,)),
                ),
                Positioned(
                  top: 14.h,
                  left: 20,
                  child: SizedBox(width:width/2, child: BigText(text:  "Shikkha", color: Colors.white, size: 25.sp,)),
                ),
                const SizedBox(height: 30,),
                Positioned(
                  bottom: 10.h,
                  left: 20,
                  child:  MediunText(text: "Please Signup with Sikkha", color: Colors.white70, size: 15,),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Form(
                key: _signUpKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _instituteName,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Field much not be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Institute Name",
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
                            Icons.school_outlined,
                            color: appColor.grey,
                          ),
                          filled: true,
                          fillColor: appColor.grey_200,
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        controller: _email,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Email field much not be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "e-mail address",
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
                                width: 1,color:  appColor.blue
                            ),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color:  appColor.grey,
                          ),
                          filled: true,
                          fillColor: appColor.grey_200,
                        ),
                      ),
                      SizedBox(height: 15,),

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
                            borderRadius: BorderRadius.circular(100),
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
                      SizedBox(height: 15,),

                      TextFormField(
                        controller: _address,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Address field much not be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Address",
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
                                width: 1,color:  appColor.blue
                            ),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: appColor.grey,
                          ),
                          filled: true,
                          fillColor: appColor.grey_200,
                        ),
                      ),
                      SizedBox(height: 15,),


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
                          hintText: "Password",
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

                      )

                    ],
                  )
              ),
            ),

            SizedBox(height: 3.h,),
            Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
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
                          "Sign Up".toUpperCase(),
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

            SizedBox(height: 2.h,),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "I have an account. ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: appColor.black
                          )
                      ),
                      TextSpan(
                          text: "LOGIN",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFFFF0707)
                          )
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
