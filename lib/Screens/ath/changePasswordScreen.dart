import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/customshap.dart';
import 'package:sahab/Widget/customtextField.dart';
class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(


                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
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




              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('ChangePassword'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 22.sp,
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
                padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('subtiltlechangpassword'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 18,
                  namecolor: Color(0xFF272727),
                  namefont: FontWeight.w500,



                ),
              ),



              CustomTextField(hint: translator.translate('CurrentPassword'),size: 15,color: Color(0xFF272727),fontfamily: 'GE_SS_Two_Medium',fontWeight: FontWeight.w300 ),
              CustomTextField(hint: translator.translate('newPassword'),size: 15,color: Color(0xFF272727),fontfamily: 'GE_SS_Two_Medium',fontWeight: FontWeight.w300 ),
              CustomTextField(hint: translator.translate('RepeatNewPassword'),size: 15,color: Color(0xFF272727),fontfamily: 'GE_SS_Two_Medium',fontWeight: FontWeight.w300 ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 10.w),
        child: CustomText(
          text: translator.translate('noteChangPassword'),
          namefamily: 'GE_SS_Two_Medium',
          numsize: 14,
          namecolor: Color(0xFF272727),
          namefont: FontWeight.w300,



        ),
      ),
              SizedBox(height: 30.h,),
              CustomShape(
                text: translator.translate('save'),
                icon: Icons.arrow_back_ios,
              ),

            ],
          ),

        ),
      ),
    );
  }
}
