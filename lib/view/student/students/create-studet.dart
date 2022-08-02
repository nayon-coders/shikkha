import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:sizer/sizer.dart';


class CreateStudent extends StatefulWidget {
  const CreateStudent({Key? key}) : super(key: key);

  @override
  State<CreateStudent> createState() => _CreateStudentState();
}

class _CreateStudentState extends State<CreateStudent> {
  final _studeFormKey = GlobalKey<FormState>();

  final _class = TextEditingController();
  final _sectionName = TextEditingController();
  final _groupName = TextEditingController();


  //TODO: Class dorpdown button
  List<String> _classList = ["Class 1", "Class 2", "Class 3"];
  String _selectedClass = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),

      decoration: BoxDecoration(

      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                  size: 200,
                ),
                Positioned(
                  right: 20,
                    top: 10,
                    child:  Bounce(
                    duration: Duration(milliseconds: 80),
                    onPressed: (){},
                    child: Container(
                  width: 50,
                      height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF167EE6),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                  ),
                  child: Center(
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                  ),
                ),
                    ))
              ],
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Personal", color: Colors.grey,),
                  SizedBox(height: 20,),

                  BigText(text: "Student Name"),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 20,),

                  BigText(text: "Parents Name"),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Parents Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),


                  BigText(text: "Roll Number"),
                  SizedBox(height: 5,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Roll Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),



                  SizedBox(height: 30,),

                  Bounce(
                    duration: Duration(milliseconds: 80),
                    onPressed: (){
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF7292CF),

                              const Color(0xFF2855AE),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Center(child: BigText(text: "Submit", color: appColor.white,)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
