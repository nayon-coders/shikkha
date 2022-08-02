import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/student/students/create-studet.dart';
import 'package:shikkha_new/view/student/students/studes-show.dart';
import 'package:sizer/sizer.dart';
import '../../../utility/big-text.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            //TODO: Top bar
            Stack(
              children: [
                Container(
                  height: 180,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2D59B0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/image/BigCircles.png"),
                      fit: BoxFit.contain,
                    ),
                  ),

                  child: Padding(
                    padding:  EdgeInsets.only(top: 5.h, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TODO: Top bar icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: (){
                                      Navigator.pop(context);

                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: appColor.white,
                                      size: 20.sp,
                                    )
                                ),
                                Text(
                                  "Students",
                                  style: TextStyle(
                                    color: appColor.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(width: 1, color: appColor.white)
                                    ),
                                    child:Icon(
                                      Icons.search,
                                      color: appColor.white,
                                      size: 15.sp,
                                    )
                                ),
                                SizedBox(width: 10,),
                                Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(width: 1, color: appColor.white)
                                    ),
                                    child:Icon(
                                      Icons.notifications_active,
                                      color: appColor.white,
                                      size: 18.sp,
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: width/9,
                  right: width/9,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      transform: Matrix4.translationValues(0.0, 20.0, 0.0,),

                      decoration: BoxDecoration(
                          color: appColor.mainColor,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color:Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 5)
                            )
                          ]
                      ),
                      child: Center(
                          child:  TabBar(

                            labelColor: appColor.mainColor,
                            unselectedLabelColor: appColor.white,
                            unselectedLabelStyle: TextStyle(
                              color: appColor.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            indicatorColor: Colors.white,
                            indicator: BoxDecoration(
                              color: appColor.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            tabs: [
                            Tab(text: "Studens Show",),
                              Tab(text: "Student Create",),

                            ],
                          ),
                      ),
                    ),

                  ),
                ),
              ],
            ),


            SizedBox(height: 30,),
            //TODO: tabbar view
            Expanded(
                child: TabBarView(
                    children: [
                      StudentsShow(),
                      CreateStudent(),
                    ]
                )
            )

          ],
        ),
      ),
    );
  }
}
