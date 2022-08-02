import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:shikkha_new/utility/big-text.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:sizer/sizer.dart';


class StudentsShow extends StatefulWidget {
  const StudentsShow({Key? key}) : super(key: key);

  @override
  State<StudentsShow> createState() => _StudentsShowState();
}

class _StudentsShowState extends State<StudentsShow> {
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
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: "Class"),
            SizedBox(height: 5,),
            DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2, color: Color(0xFFCACED8)
                  )
                )
              ),
              hint: Text("Select One"),
              value: _classList[0],
                items: _classList.map((classItem) => DropdownMenuItem(
                  value: classItem,
                    child: Text(
                      classItem,
                      style: TextStyle(
                        fontSize: 10.sp
                      ),
                    )
                )).toList(),
              onChanged: (String? value) {
                  setState((){
                   if(value != null){
                     _selectedClass = value!;
                   }
                  });
              },
            ),

            SizedBox(height: 25,),

            BigText(text: "Section Name"),
            SizedBox(height: 5,),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 2, color: Color(0xFFCACED8)
                      )
                  )
              ),
              value: _classList[0],
              hint: Text("Select One"),
              items: _classList.map((classItem) => DropdownMenuItem(
                  value: classItem,
                  child: Text(
                    classItem,
                    style: TextStyle(
                        fontSize: 10.sp
                    ),
                  )
              )).toList(),
              onChanged: (String? value) {
                setState((){
                  if(value != null){
                    _selectedClass = value!;
                  }
                });
              },
            ),

            SizedBox(height: 25,),

            BigText(text: "Group Name"),
            SizedBox(height: 5,),
            DropdownButtonFormField(

              decoration: InputDecoration(
                hintText: "Select One",
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 2, color: Color(0xFFCACED8)
                      )
                  )
              ),
              value: _classList[0],
              hint: Text("Select One"),
              items: _classList.map((classItem) => DropdownMenuItem(
                  value: classItem,
                  child: Text(
                    classItem,
                    style: TextStyle(
                        fontSize: 10.sp
                    ),
                  )
              )).toList(),
              onChanged: (String? value) {
                setState((){
                  if(value != null){
                    _selectedClass = value!;
                  }
                });
              },
            ),


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
    );
  }
}
