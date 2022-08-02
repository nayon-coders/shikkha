import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/utility/normal-text.dart';
import 'package:shikkha_new/view/student/students/students.dart';
import 'package:shikkha_new/view/student/widget/home-chart.dart';
import 'package:sizer/sizer.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_bounce/flutter_bounce.dart';

class StdHomeScreen extends StatefulWidget {
  const StdHomeScreen({Key? key}) : super(key: key);

  @override
  State<StdHomeScreen> createState() => _StdHomeScreenState();
}

class _StdHomeScreenState extends State<StdHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              Container(
                height: 230,
                width: width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/image/ng.png"),
                      fit: BoxFit.cover,
                    ),
                ),

                child: Padding(
                  padding:  EdgeInsets.only(top: 5.h, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TODO: Top bar ic
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Icon(
                            Icons.menu,
                            color: appColor.white,
                            size: 30.sp,
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
                                    size: 17.sp,
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
                                    size: 17.sp,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                      MediunText(text: "CodeCell High School", size: 15.sp, color: appColor.white,),
                      MediunText(text: "Teacher: 10 | Student: 50", size: 10.sp, color: Color(0xFFBECCE8),),
                      SizedBox(height: 10,),
                      Container(

                        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: appColor.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: MediunText(text: "28 Jun, 2022", size: 10.sp,),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: width/11,
                right: width/11,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    transform: Matrix4.translationValues(0.0, 20.0, 0.0,),
                    width: width/1.2,
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: appColor.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3)
                          )
                        ]
                    ),
                    child: Center(child: BigText(text: "Your Dashboard", size: 12.sp,)),
                  ),

                ),
              ),
            ],
          ),

          SizedBox(height: 30,),

          //TODO: Body Part
          Expanded(
              child: ListView(
                children: [
                  Container(
                    width: width,
                    height: 150,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Bounce(
                          duration: Duration(milliseconds: 80),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Students()));
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: 300,
                                height: 150,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFFB7AEFE),
                                      const Color(0xFFC7E4FF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end:  Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFC600),
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    BigText(text: "500", size: 25.sp, color: Color(0xFF101D2E)),
                                    MediunText(text: "Students", size: 17.sp, color: Color(0xFF101D2E),)
                                  ],
                                ),
                              ),
                              Positioned(
                                  top:0,
                                  left: 0,
                                  child: Image.asset("assets/image/sp2.png",)
                              ),
                              Positioned(
                                  bottom:0,
                                  right: 0,
                                  child: Image.asset("assets/image/sp1.png",)
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20,);
                      },
                      itemCount: 5,
                    ),
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: MediunText(text: "SmS Service", size: 15.sp,),
                  ),
                  Container(
                    width: width,
                    height: 170,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF7654F6),
                            const Color(0xFFCF28FE),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Text("Any Infomation you need to inform",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: appColor.white,
                              fontFamily: "Nuno",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.sp
                          ),
                        ),
                        Center(
                          child: MediunText(text: "You have unlimited sms service ", size: 12.sp, color: Color(0xFFD3C9C9),),
                        ),

                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            transform: Matrix4.translationValues(0.0, 20.0, 0.0,),
                            width: width/1.2,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                color: appColor.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      color:Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 30,
                                      offset: Offset(0, 5)
                                  )
                                ]
                            ),
                            child: Center(child: BigText(text: "Send SMS", size: 12.sp, color: Color(0xFF7455F6),)),
                          ),

                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),

                  //TODO: Class
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediunText(text: "Your Class", size: 15.sp,),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 20,
                            ),

                            SizedBox(width: 5,),
                            MediunText(text: "Thursday", size: 13.sp,)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width/3.5,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF18DEFA),
                                const Color(0xFF469AF0),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/class.png", height: 80,),
                              MediunText(text: "Exam", size: 18.sp, color: appColor.white,)
                            ],
                          ),
                        ),
                        Container(
                          width: width/3.5,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFE652A),
                                const Color(0xFFFEA82A),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/class.png", height: 80,),
                              MediunText(text: "Info", size: 18.sp, color: appColor.white,)
                            ],
                          ),
                        ),
                        Container(
                          width: width/3.5,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFDDB78),
                                const Color(0xFFEDB854),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/class.png", height: 80,),
                              MediunText(text: "Reports", size: 18.sp, color: appColor.white,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),



                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediunText(text: "Today’s Schedule", size: 15.sp,),
                        TextButton(
                            onPressed: (){},
                          child: BigText(text: "See All", color: Color(0xFF59BA7B),),

                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 175,
                    width: width,

                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              width: width/3,
                            margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: appColor.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5)
                                    )
                                  ]
                              ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Center(child: MediunText(text: "10 Jun",)),
                                  ),

                                ),
                                Image.asset("assets/image/shedul.png", fit: BoxFit.cover,),
                                SizedBox(height: 15,),
                                BigText(text: "Class-8",size: 10.sp,),
                                MediunText(text: "Class-8",size: 8.sp,),
                                BigText(text: "Chemistry",size: 11.sp,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(width: 2,),
                                    MediunText(text: "9:30 AM",size: 9.sp,)
                                  ],
                                )
                              ],
                            ),
                          );

                        },
                        separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 10,),
                      ),

                    ),
                  ),


                  SizedBox(height: 20,),

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: width,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           children: [
                             Container(

                               width: 50,
                               height: 150,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Center(
                                     child: Text("92%"),
                                   ),
                                   Container(
                                     width: 50,
                                     height: 92,
                                     color: Color(0xFF1C2D40),

                                   ),
                                   Center(
                                     child: Text("Present"),
                                   ),

                                 ],
                               ),
                             ),
                             SizedBox(width: 10,),
                             Container(
                               width: 50,
                               height: 150,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Center(
                                     child: Text("20%"),
                                   ),
                                   Container(
                                     width: 50,
                                     height: 20,
                                     color: Color(0xFF80A7D6),

                                   ),
                                   Center(
                                     child: Text("Absent"),
                                   ),

                                 ],
                               ),
                             ),
                           ],
                         ),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                            Center(
                              child: Text("Attendance",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                            Container(height: 2, width: 170,color: Colors.black,),
                             Container(
                               width: width/2.5,
                               margin: EdgeInsets.only(top: 8),
                               child: Column(
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text("Total Classes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 8.sp
                                        ),
                                       ),
                                       Text("25",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w900,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text("Present days",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w300,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                       Text("90",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w900,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text("Absent days",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w300,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                       Text("25",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w900,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text("Over all percentage ",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w300,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                       Text("82.45%",
                                         style: TextStyle(
                                             fontWeight: FontWeight.w900,
                                             fontSize: 8.sp
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                        ],
                      ),
                    ),

                  ),




                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child:  MediunText(text: "Finance", size: 15.sp,),
                  ),
                  Container(
                    width: width,
                    height: 150,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Container(
                              width: 300,
                              height: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFB7AEFE),
                                    const Color(0xFFC7E4FF),
                                  ],
                                  begin: Alignment.topCenter,
                                  end:  Alignment.bottomCenter,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFC600),
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  BigText(text: "500", size: 25.sp, color: Color(0xFF101D2E)),
                                  MediunText(text: "Students", size: 17.sp, color: Color(0xFF101D2E),)
                                ],
                              ),
                            ),
                            Positioned(
                                top:0,
                                left: 0,
                                child: Image.asset("assets/image/sp2.png",)
                            ),
                            Positioned(
                                bottom:0,
                                right: 0,
                                child: Image.asset("assets/image/sp1.png",)
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20,);
                      },
                      itemCount: 5,
                    ),
                  ),
                  SizedBox(height: 50,),




                ],
              )

          ),




        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shopee Mall',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
