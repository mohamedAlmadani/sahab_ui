import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShapLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: translator.currentLanguage == 'en'?EdgeInsets.only(left: 280.w):EdgeInsets.only(right: 280.w),



      width: 74.0.w,
      height: 74.0.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: const Color(0xFF355ABE),
          image:DecorationImage(
              image: AssetImage('assets/images/logob.png')
          )
      ),

      // child: Image.asset('assets/images/logob.png'),




    );
  }
}
