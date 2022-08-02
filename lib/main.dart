import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/login-screen.dart';
import 'package:shikkha_new/view/select-language.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
       builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           // Set Nuno as the default app font.
           theme: ThemeData(fontFamily: 'Nuno'),
           home: const FlashScreen(),
         );
       },
    );
  }
}

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key,}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {

  @override
  void initState(){
    _completeSplash();
  }

  Future _completeSplash() async {
    await Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return SelectLanguage();
          },
        ),
      );
    });
  }

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
                top: height/8,
                left: width/4.5,
                child: Image.asset("assets/image/logo.png", height: 220, width: 220,)
            ),

            ///center text
            ///
            Positioned(
                bottom: height/4.5,
                child: Image.asset("assets/image/flash.png", height: 500, width: width, fit: BoxFit.cover,)
            ),
            Positioned(
              bottom: 100,
              left: width/2.4,
              child: SpinKitThreeBounce(
                color:Colors.white,size: 30,
                duration: Duration(milliseconds: 1000),
              ),
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
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Stack(
        //       clipBehavior: Clip.none,
        //       children: [
        //         Positioned(
        //           bottom: 0,
        //           left: 0,
        //           child: Container(
        //               width: width,
        //               height: 300,
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.only(
        //                       topLeft: Radius.circular(150),
        //                       topRight: Radius.circular(150)
        //                   ),
        //                   gradient: LinearGradient(
        //                       colors: [
        //                         appColor.mainColor,
        //                         appColor.mainColorLight
        //                       ],
        //                       begin: Alignment.topCenter,
        //                       end: Alignment.bottomCenter
        //                   )
        //               ),
        //           ),
        //         ),
        //         Positioned(
        //
        //             child: Image.asset("assets/image/logo.png", height: 220, width: 220,)
        //         ),
        //         Positioned(
        //             top: -350,
        //             child: Image.asset("assets/image/flash.png", height: 500, width: width, fit: BoxFit.cover,)
        //         ),
        //
        //         Positioned(
        //             bottom: 10,
        //             left: 10,
        //             child: RichText(
        //               text: TextSpan(
        //                   children: [
        //                     TextSpan(text: "Powerd By ",
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             color: Color(0xFF797979)
        //                         )
        //                     ),
        //                     TextSpan(text: "CodeCell ",
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             fontWeight: FontWeight.bold,
        //                             color: Color(0xFF189EEA)
        //                         )
        //                     ),
        //                     TextSpan(text: "Mother concern of ",
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             color: Color(0xFF797979)
        //                         )
        //                     ),
        //                     TextSpan(text: "Shikha",
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             fontWeight: FontWeight.bold,
        //                             color: Color(0xFF189EEA)
        //                         )
        //                     ),
        //
        //
        //                   ]
        //               ),
        //
        //             )
        //         ),
        //
        //         Positioned(
        //           bottom: 100,
        //           left: width/2.4,
        //           child: SpinKitThreeBounce(
        //             color:Colors.white,size: 30,
        //             duration: Duration(milliseconds: 1000),
        //           ),
        //         )
        //
        //
        //       ],
        //     ),
        //
        //
        //   ],
        // )
      ),
    );
  }
}
