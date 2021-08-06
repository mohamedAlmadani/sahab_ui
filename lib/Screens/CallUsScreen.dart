import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab/Widget/customtextField.dart';


class CallUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          icon: Icons.arrow_back_ios,
          text: translator.translate('CallUs'),
          iconaction: Icons.search,
          ontap: () {
            Get.to(Home());
          }),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/pagecall.png'),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                  hint: translator.translate('NameCall'),
                  size: 15,
                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
              CustomTextField(
                  hint: translator.translate('EmailCall'),
                  size: 15,
                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
              CustomTextField(
                  hint: translator.translate('PhoneCall'),
                  size: 15,
                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
              CustomTextField(
                  hint: translator.translate('Message'),
                  size: 15,
                  min: 4,

                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
           Container(
             alignment: Alignment.center,
             height: 55.h,
             width:340.w,

             decoration: BoxDecoration(
               color:Color(0xFF355ABE) ,
               borderRadius:  BorderRadius.only(
                   bottomRight: Radius.circular(10),
                   topLeft: Radius.circular(10)),

             ),

             child: Text(translator.translate('SendMessage'),style: TextStyle(
               color: Colors.white,
               fontSize: 15.sp,
                 fontFamily: 'GE_SS_Two_Medium',
                 fontWeight: FontWeight.w300

             ),),
           ),
              SizedBox(height: 60.h,),



            ],
          ),
        ),
      ),
    );
  }
}
