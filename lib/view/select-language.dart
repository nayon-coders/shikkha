import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/colors.dart';
import 'package:shikkha_new/view/login-screen.dart';
import 'package:sizer/sizer.dart';
import '../utility/big-text.dart';
import '../utility/normal-text.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {

  var _currencies = [
    "🇺🇲   English ",
    "🇧🇩   বাংলা ",
  ];

  var _currentSelectedValue;

  @override
  void initState(){
    super.initState();
    _currentSelectedValue = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset("assets/image/Vector.png", width: width, height: height/3, fit: BoxFit.fill,),

              Positioned(
                top: height/10,
                left: 20,
                child: SizedBox(width:width/2, child: MediunText(text:  "Language", color: Colors.white, size: 25.sp,)),
              ),
              const SizedBox(height: 30,),
              Positioned(
                bottom: height/8,
                left: 20,
                child:  MediunText(text: "Please confirm and continue", color: Colors.white70, size: 15,),
              )
            ],
          ),

          Center(
            child: Padding(
              padding:  EdgeInsets.only(left: 20, right: 20, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Select Language", size: 25.sp, color: Colors.black,),
                  MediunText(text: "Please select your prefered language", size: 10.sp, color: Colors.grey,),
                 SizedBox(height: 20,),
                  FormField(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                            hintText: 'Please select expense',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: appColor.mainColor),
                                borderRadius: BorderRadius.circular(10.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _currentSelectedValue,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                _currentSelectedValue = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _currencies.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 25.h,),
          Align(
              alignment: Alignment.bottomCenter,
              child:InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
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
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Continue".toUpperCase(),
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
    );
  }
}
