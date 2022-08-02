import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shikkha_new/view/student/home-screen.dart';
import 'package:shikkha_new/view/student/std-lets-go-screen.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  bool student_size = false;
  bool student_size2 = false;
  bool student_siz3 = false;
  bool student_siz4 = false;
  bool student_size5 = false;
  bool student_size6 = false;
  var size_student;
  bool teacher_size = false;
  bool teacher_size2 = false;
  bool teacher_siz3 = false;
  bool teacher_siz4 = false;
  bool teacher_size5 = false;
  bool teacher_size6 = false;
  var size_teacher;
  bool h1 = false;
  bool h2 = false;
  bool h3 = false;
  bool h4 = false;
  bool h5 = false;
  bool h6 = false;
  var hear;


  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/Vector.png", width: width, height: 30.h, fit: BoxFit.fill,),
          Image.asset("assets/image/logo.png",height: 120, width: 220,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: height/1.9,
            width: width,
            child: IntroductionScreen(
              key: introKey,
              globalBackgroundColor: Colors.white,
              pages: [
                PageViewModel(
                  title: "Welcome to Schaool Name",
                  body:
                  "Our mission is to make you more productive. This will only take a minute.",
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "How many students do you have ??",
                  bodyWidget: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = true;
                                student_size2 = false;
                                student_siz3 = false;
                                student_siz4 = false;
                                student_size5 = false;
                                student_size6 = false;
                                size_student = '1-25';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_size == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-25",
                                    style: TextStyle(
                                      fontFamily: "Nanu",
                                        color: student_size == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = false;
                                student_size2 = true;
                                student_siz3 = false;
                                student_siz4 = false;
                                student_size5 = false;
                                student_size6 = false;
                                size_student = '1-50';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_size2 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-50",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: student_size2 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = false;
                                student_size2 = false;
                                student_siz3 = true;
                                student_siz4 = false;
                                student_size5 = false;
                                student_size6 = false;
                                size_student = '1-100';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_siz3 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-100",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: student_siz3 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = false;
                                student_size2 = false;
                                student_siz3 = false;
                                student_siz4 = true;
                                student_size5 = false;
                                student_size6 = false;
                                size_student = '1-150';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_siz4 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-150",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: student_siz4 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = false;
                                student_size2 = false;
                                student_siz3 = false;
                                student_siz4 = false;
                                student_size5 = true;
                                student_size6 = false;
                                size_student = '1-250';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_size5 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-250",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: student_size5 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                student_size = false;
                                student_size2 = false;
                                student_siz3 = false;
                                student_siz4 = false;
                                student_size5 = false;
                                student_size6 = true;
                                size_student = '1-5000';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: student_size6 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-5000",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: student_size6 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),

                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "How many teacher do you have ??",
                  bodyWidget: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = true;
                                teacher_size2 = false;
                                teacher_siz3 = false;
                                teacher_siz4 = false;
                                teacher_size5 = false;
                                teacher_size6 = false;
                                size_teacher = '1-25';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_size == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-25",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_size == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = false;
                                teacher_size2 = true;
                                teacher_siz3 = false;
                                teacher_siz4 = false;
                                teacher_size5 = false;
                                teacher_size6 = false;
                                size_teacher = '1-50';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_size2 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-50",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_size2 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = false;
                                teacher_size2 = false;
                                teacher_siz3 = true;
                                teacher_siz4 = false;
                                teacher_size5 = false;
                                teacher_size6 = false;
                                size_teacher = '1-100';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_siz3 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-100",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_siz3 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = false;
                                teacher_size2 = false;
                                teacher_siz3 = false;
                                teacher_siz4 = true;
                                teacher_size5 = false;
                                teacher_size6 = false;
                                size_teacher = '1-150';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_siz4 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-150",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_siz4 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = false;
                                teacher_size2 = false;
                                teacher_siz3 = false;
                                teacher_siz4 = false;
                                teacher_size5 = true;
                                teacher_size6 = false;
                                size_teacher = '1-250';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_size5 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-250",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_size5 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                teacher_size = false;
                                teacher_size2 = false;
                                teacher_siz3 = false;
                                teacher_siz4 = false;
                                teacher_size5 = false;
                                teacher_size6 = true;
                                size_teacher = '1-5000';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: teacher_size6 == false
                                      ? Colors.white
                                      : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "1-5000",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color: teacher_size6 == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "How did you hear about us ??",
                  bodyWidget: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = true;
                                h2 = false;
                                h3 = false;
                                h4 = false;
                                h5 = false;
                                h6 = false;
                                hear = 'Search Engine';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h1 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Search Engine",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h1 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = false;
                                h2 = true;
                                h3 = false;
                                h4 = false;
                                h5 = false;
                                h6 = false;
                                hear = 'Google Ads';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h2 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Google Ads",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h2 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = false;
                                h2 = false;
                                h3 = true;
                                h4 = false;
                                h5 = false;
                                h6 = false;
                                hear = 'Facebook Ads';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h3 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Facebook Ads",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h3 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = false;
                                h2 = false;
                                h3 = false;
                                h4 = true;
                                h5 = false;
                                h6 = false;
                                hear = 'Youtube Ads';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h4 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Youtube Ads",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h4 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = false;
                                h2 = false;
                                h3 = false;
                                h4 = false;
                                h5 = true;
                                h6 = false;
                                hear = 'Social Media';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h5 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Social Media",
                                    style: TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h5 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                h1 = false;
                                h2 = false;
                                h3 = true;
                                h4 = false;
                                h5 = false;
                                h6 = true;
                                hear = 'Facebook Ads';
                              });
                            },
                            child: Container(
                                height: height / 20,
                                width: width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: h6 == false ? Colors.white : Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),

                                      spreadRadius: 5,

                                      blurRadius: 7,

                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Others",
                                    style:TextStyle(
                                        fontFamily: "Nanu",
                                        color:
                                        h6 == false ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: pageDecoration,
                ),
              ],
              onDone: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StdLetsGo()));
              },
              //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
              showSkipButton: false,
              dotsFlex: 0,
              nextFlex: 0,
              done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
              next: Container(),
              curve: Curves.fastLinearToSlowEaseIn,
              controlsMargin: const EdgeInsets.all(16),
              controlsPadding: kIsWeb
                  ? const EdgeInsets.all(12.0)
                  : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              dotsDecorator: const DotsDecorator(
                size: Size(10.0, 10.0),
                color: Color(0xFFBDBDBD),
                activeSize: Size(22.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              dotsContainerDecorator: const ShapeDecoration(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
