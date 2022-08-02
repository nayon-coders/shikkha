import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/utility/normal-text.dart';
import 'package:shikkha_new/view/student/home-screen.dart';
import 'package:sizer/sizer.dart';

class StdLetsGo extends StatefulWidget {
  const StdLetsGo({Key? key,}) : super(key: key);

  @override
  State<StdLetsGo> createState() => _StdLetsGoState();
}

class _StdLetsGoState extends State<StdLetsGo> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Center(
        child: Stack(
          children: [

            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(150),
                        topRight: Radius.circular(150)
                    ),
                    gradient: LinearGradient(
                        colors: [
                          appColor.mainColor,
                          appColor.mainColorLight
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
              ),
            ),

            ///LOGO
            Positioned(
                top: height/7,
                left: width/4.5,
                child: Image.asset("assets/image/logo.png", height: 220, width: 220,)
            ),

            ///LOGO
            Positioned(
                top: 0,
                child:Image.asset("assets/image/Vector.png", width: width, height: 22.h, fit: BoxFit.fill,),
            ),



            ///center text
            ///
            Positioned(
                bottom: height/3,
                child: Image.asset("assets/image/letsgo.png", height: 200, width: width, fit: BoxFit.contain,)
            ),
            Positioned(
              bottom: height/4,
              left: width/3.4,
              child: Text(
                "It's time to start",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Nuno",
                  color: appColor.white,
                ),
              )
            ),
            Positioned(
              bottom: height/7,
              left: width/8,
              right: width/8,
              child: Text(
                  "No More Step Left ,Now go and More easy with Sikkha",
               textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Nuno",
                  color: appColor.white,
                ),
              )
            ),

            Positioned(
                bottom: height/17,
                left: width/8,
                right: width/8,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StdHomeScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 7, bottom: 7),
                    decoration: BoxDecoration(
                      color: appColor.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      "Let's Go",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Nuno",
                        color: appColor.mainColor,
                      ),
                    ),
                  ),
                )
            ),


            ///bottom
            Positioned(
                bottom: 10,
                left: 10,
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Powerd By ",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF797979)
                            )
                        ),
                        TextSpan(text: "CodeCell ",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF189EEA)
                            )
                        ),
                        TextSpan(text: "Mother concern of ",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF797979)
                            )
                        ),
                        TextSpan(text: "Shikha",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF189EEA)
                            )
                        ),


                      ]
                  ),

                )
            ),
          ],
        ),

      ),
    );
  }
}
