import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home/sectionsScreen.dart';
import 'package:sahab/Screens/ath/SignUpScreen.dart';
import 'package:sahab/Screens/ath/changePasswordScreen.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/customshap.dart';
import 'package:sahab/Widget/customtextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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
                height: 60.h,
              ),

              Container(
                margin: translator.currentLanguage == 'en'?EdgeInsets.only(left: 280.w):EdgeInsets.only(right: 280.w),
                width: 74.0.w,
                height: 74.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: const Color(0xFF355ABE),
                    image: DecorationImage(
                        image: AssetImage('assets/images/logob.png'))),

                // child: Image.asset('assets/images/logob.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('sign_in'),
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
                  text: translator.translate('welcome'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 18,
                  namecolor: Color(0xFF272727),
                  namefont: FontWeight.w500,
                ),
              ),
              CustomTextField(
                  hint: translator.translate('MobileNumber'),
                  size: 15,
                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
              CustomTextField(
                  hint: translator.translate('password'),
                  size: 15,
                  color: Color(0xFF272727),
                  fontfamily: 'GE_SS_Two_Medium',
                  fontWeight: FontWeight.w300),
              Padding(
                padding: EdgeInsets.only(right: 280.w),
                child: CustomText(
                  text: translator.translate('newAccount'),
                  numsize: 17,
                  namecolor: Color(0xFF272727),
                  namefamily: 'GE_SS_Two_Medium',
                  namefont: FontWeight.w300,
                  ontap: () {
                    Get.to(SignUp());
                  },
                ),
              ),
           const   SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShape(
                    text: translator.translate('login'),
                    icon: Icons.arrow_forward_ios,
                    ontap: (){
                      Get.to(SectionsScreen());
                    },
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 10.w),

                    child: CustomText(text: translator.translate('ForgotPassword'),numsize: 17,namecolor: Color(0xFF272727),namefamily:'GE_SS_Two_Medium' ,namefont: FontWeight.w300,ontap: (){
                      Get.to(ChangePassword());
                    },),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
