import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/ath/NewPassword.dart';
import 'package:sahab/Widget/CustonShapLogin.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/customshap.dart';

class ForgotPassword extends StatefulWidget {


  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: 60.h,
              ),
              CustomShapLogin(),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('ForgotPassword'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 22,
                  namecolor: Color(0xFF355ABE),
                  namefont: FontWeight.w700,
                  // nametextalign:  translator.currentLanguage == 'en'
                  //     ? TextAlign.left
                  //     : TextAlign.right,
                  // textDirection: translator.currentLanguage == 'en'
                  //     ? TextDirection.ltr
                  //     : TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('SubForgotPassword'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 14,
                  namecolor: Color(0xFF272727),
                  namefont: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                  height: 50.0,

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
              SizedBox(height: 80.h,),
              CustomShape(
                text: translator.translate('confirmation'),
                icon: Icons.arrow_forward_ios,
                ontap: (){
                  Get.to(NewPassword());
                },
              ),


            ],
          ),

        )
      ),
    );
  }
}
