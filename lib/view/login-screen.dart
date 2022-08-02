import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/forget-password/forget-password.dart';
import 'package:shikkha_new/view/otp-screen.dart';
import 'package:shikkha_new/view/sign-up-screen.dart';
import 'package:sizer/sizer.dart';

import '../utility/big-text.dart';
import '../utility/normal-text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool islogin = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _passwordVisible = false;

  bool _isSelectRol = false;
  String? role;



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TODO: Top bar Satck
              Stack(
                children: [
                  Image.asset("assets/image/Vector.png", width: width, height: height/3, fit: BoxFit.fill,),
                  Positioned(
                      right: 10,
                      top: 20,
                      child: Image.asset("assets/image/login-screen.png", width: width/1.5, )
                  ),
                  Positioned(
                    top: 10.h,
                    left: 20,
                    child: SizedBox(width:width/2, child: MediunText(text:  "Welcome to ", color: Colors.white, size: 20.sp,)),
                  ),
                  Positioned(
                    top: 14.h,
                    left: 20,
                    child: SizedBox(width:width/2, child: BigText(text:  "Shikkha", color: Colors.white, size: 25.sp,)),
                  ),
                  const SizedBox(height: 30,),
                  Positioned(
                    top: height/5,
                    left: 20,
                    child:  MediunText(text: "Please login to continue", color: Colors.white70, size: 15,),
                  )
                ],
              ),

              //TODO: Login Form
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2.h),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          validator: (val){
                            if(val!.isEmpty){
                              return "Email field much not be empty";
                            }
                            else return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Email",
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
                              Icons.email,
                              color: appColor.grey,
                            ),
                            filled: true,
                            fillColor: Color(0xFFF7F7F7),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        TextFormField(
                          obscureText: _passwordVisible,
                          controller: password,
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
                              Icons.key,
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
                    )),
              ),

              const SizedBox(height: 30,),

              //TODO: 3 roll contain box
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState((){
                          role = "Student";
                          _isSelectRol = !_isSelectRol;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: width/4,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffAC73BA)),
                            borderRadius: BorderRadius.circular(5),
                            color: _isSelectRol && role == "Student" ? Color(0xffAC73BA) :Colors.white
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/image/st.png"),
                              const SizedBox(height: 5,),
                              MediunText(text: "Student", size: 12, color: _isSelectRol && role == "Student" ?Colors.white:Colors.black,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          role = "Teacher";
                          _isSelectRol = !_isSelectRol;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: width/4,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffAC73BA)),
                            borderRadius: BorderRadius.circular(5),
                            color: _isSelectRol && role == "Teacher" ? Color(0xffAC73BA) :Colors.white
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/image/t.png"),
                              const SizedBox(height: 5,),
                              MediunText(text: "Teacher", size: 12,color: _isSelectRol && role == "Teacher" ? Colors.white :Colors.black,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          role = "School";
                          _isSelectRol = !_isSelectRol;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: width/4,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffAC73BA)),
                            borderRadius: BorderRadius.circular(5),
                            color: _isSelectRol && role == "School" ? Color(0xffAC73BA) :Colors.white
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/image/sc.png"),
                              const SizedBox(height: 5,),
                              MediunText(text: "School", size: 12,color: _isSelectRol && role == "School" ?Colors.white:Colors.black,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              SizedBox(height: 3.h,),
              
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassEnterNumber()));
                      },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Forget Password ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: appColor.black
                            )
                          ),
                          TextSpan(
                              text: "Click",
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
                ),
              ),
              SizedBox(height: 5.h,),
              Align(
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
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
                            Color(0xFFD06EE1), Color(0xFF68ACFA),
                          ]
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Login".toUpperCase(),
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
               SizedBox(height: 8.h,),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "I don't have account. ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: appColor.black
                              )
                          ),

                          TextSpan(
                              text: "SIGN UP",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
