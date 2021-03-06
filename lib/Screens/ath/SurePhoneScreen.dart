import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/ath/ActivateTheAccount.dart';
import 'package:sahab/Widget/CustonShapLogin.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/customshap.dart';

class SurePhoneScreen extends StatefulWidget {
  const SurePhoneScreen({Key? key}) : super(key: key);

  @override
  _SurePhoneScreenState createState() => _SurePhoneScreenState();
}

class _SurePhoneScreenState extends State<SurePhoneScreen> {
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
              CustomShapLogin(),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 50.w),
                child: CustomText(
                  text: translator.translate('surePhone'),
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
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                child: CustomText(
                  text: translator.translate('sureSubPhone'),
                  namefamily: 'GE_SS_Two_Medium',
                  numsize: 14,
                  namecolor: Color(0xFF272727),
                  namefont: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: TextFormField(

                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
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
                          )


                      ),
                    )),
                    SizedBox(width: 10.w,),
                    Expanded(child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
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
                          )
                      ),
                    )),
                    SizedBox(width: 10.w,),
                    Expanded(child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
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
                          )
                      ),
                    )),
                    SizedBox(width: 10.w,),
                    Expanded(child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
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
                          )
                      ),
                    )),

                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Row(


                mainAxisAlignment: MainAxisAlignment.center,
                children: [

          Text(
            '30 : 01',
            style: TextStyle(
              fontFamily: 'GE_SS_Two_Medium',
              fontSize: 19.0,
              color: const Color(0xFF272727),
              fontWeight: FontWeight.w500,
            ),
            // textAlign: TextAlign.right,
          ),
                  SizedBox(width: 15.w,),
                  Text(
                    '?????????? ??????????',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 17.0,
                      color: const Color(0xFF272727),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(height: 80.h,),
              CustomShape(
                text: translator.translate('confirmation'),
                icon: Icons.arrow_forward_ios,
                ontap: (){
                  Get.to(ActivateAccount());
                },
              ),





            ],
          ),
        ),
      ),

    );
  }
}

