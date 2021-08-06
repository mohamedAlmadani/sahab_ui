import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab/Widget/customshap.dart';
import 'package:sahab/Widget/customtextField.dart';

class EdithAccount extends StatefulWidget {

  @override
  _EdithAccountState createState() => _EdithAccountState();
}

class _EdithAccountState extends State<EdithAccount> {
  var _currencies = [
    "الرياض",
    "الشارقة",
    "دبي",
    "مكة",
    "المدينة",

  ];
  String?_currentSelectedValue='المدينة';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          icon: Icons.arrow_back_ios,
          text: translator.translate('EditMyAccount'),
          iconaction: Icons.search,
          ontap: () {
           // Get.to(Home());
          }),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: 40.h,
              ),
              Stack(
                alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/myaccount/edith.png'),
                ),
                Transform.translate(
                  offset: Offset(-45.w,40.h),
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          color: Color(0xFF355ABE)
                       // border: Border.all(width: 5.0,   color: Color(0xFF355ABE),),
                      ),
                      width: 35.w,
                      height: 35.h,


                      child: Image.asset('assets/images/myaccount/camera.png',color: Colors.white,)),
                )
              ],
              ),
              CustomTextField(hint: translator.translate('Name'),size: 15,color: Color(0xFF272727),fontfamily: 'GE_SS_Two_Medium',fontWeight: FontWeight.w300 ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                  height: 65.0,

                  decoration: BoxDecoration(
                    color:  Colors.white,
                    border: Border.all(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),



                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(right: 20),

                            hintText: 'رقم الجوال',
                            hintStyle: TextStyle(
                                color: Color(0xFF272727),



                                fontWeight: FontWeight.w300,
                                fontFamily: 'GE_SS_Two_Medium',
                                fontSize: 15


                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [
                            Text('966+',style: TextStyle(color: Color(0XFFA2A2A2)),),
                            SizedBox(width: 8.w,),
                            Image.asset('assets/images/flagsaudi.png',width: 30,height: 30,),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FormField<String>(

                  builder: (FormFieldState<String> state) {

                    return InputDecorator(
                      decoration: InputDecoration(
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
              SizedBox(height: 50.h,),
              CustomShape(
                text: translator.translate('confirmation'),
                icon: Icons.arrow_back_ios,
                ontap: (){
                 // Get.to(ActivateAccount());
                },
              ),





            ],
          ),

        ),
      ),
    );
  }
}
