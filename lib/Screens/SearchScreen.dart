import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab/Widget/customtextField.dart';

class SearchScreen extends StatefulWidget {

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var _currencies = [
    "الرياض",
    "الشارقة",
    "دبي",
    "مكة",
    "المدينة",

  ];
  var theMainCat = [
    "التصنيف الرئيسي",
    "تصنيف اولي",
    "مكة"


  ];
  var theSubCat =[
    "التصنيف الفرعي",
    "دبي",


  ];
  String?_currentSelectedValue='المدينة';
  String? theMain  ='التصنيف الرئيسي';
  String ?theSub ='التصنيف الفرعي';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icons.arrow_back_ios,


          text: translator.translate('search'),

          ontap: (){
            Get.to(Home());
          }

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 30.h,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 1.h),
                  width:double.infinity,
                  height: 430.0.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Color(0xff355ABE),
                      border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextField(hint: translator.translate('Name'),size: 15,color: Color(0xFF272727),fontfamily: 'GE_SS_Two_Medium',fontWeight: FontWeight.w300 ,icon: Icon(Icons.search),),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: FormField<String>(

                            builder: (FormFieldState<String> state) {

                              return InputDecorator(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),

                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ),
                                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                                  hintText: 'Please select expense',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ) ,
                                ),
                                isEmpty: _currentSelectedValue == '',
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _currentSelectedValue,
                                    isDense: true,
                                    style:  TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF272727),
                                      fontFamily: 'GE_SS_Two_Medium',
                                      fontWeight: FontWeight.w300,

                                    ),
                                    onChanged: (String? newValue) {
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: FormField<String>(

                            builder: (FormFieldState<String> state) {

                              return InputDecorator(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),

                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ),
                                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                                  hintText: 'Please select expense',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ) ,
                                ),
                                isEmpty: theMain == '',
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: theMain,
                                    isDense: true,
                                    style:  TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF272727),
                                      fontFamily: 'GE_SS_Two_Medium',
                                      fontWeight: FontWeight.w300,

                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        theMain = newValue;
                                        state.didChange(newValue);
                                      });
                                    },
                                    items: theMainCat.map((String value) {
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: FormField<String>(

                            builder: (FormFieldState<String> state) {

                              return InputDecorator(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 2.0),

                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ),
                                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                                  hintText: 'Please select expense',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF272727),
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontWeight: FontWeight.w300,

                                  ) ,
                                ),
                                isEmpty: theSub == '',
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: theSub,
                                    isDense: true,
                                    style:  TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF272727),
                                      fontFamily: 'GE_SS_Two_Medium',
                                      fontWeight: FontWeight.w300,

                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        theSub = newValue;
                                        state.didChange(newValue);
                                      });
                                    },
                                    items: theSubCat.map((String value) {
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
                        ),
                        SizedBox(height: 15.h,),
                        GestureDetector(
                          child: Text(
                            'تأكيد',
                            style: TextStyle(
                              fontFamily: 'GE_SS_Two_Medium',
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              height: 1.31,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        )





                      ],
                    ),
                  )
              ),

            ],
          )
        ),
      ),
    );
  }
}
