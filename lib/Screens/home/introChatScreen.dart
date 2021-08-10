import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home/ChatArchiveScreen.dart';
import 'package:sahab/Screens/SearchScreen.dart';
import 'package:sahab/Screens/home/SectionAdsScreen.dart';
import 'package:sahab/Screens/home/home.dart';
import 'package:sahab/Screens/home/sectionsScreen.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:sahab/Widget/customshap.dart';

class IntroChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(icon: Icons.arrow_back_ios,
      text: translator.translate('Chat'),
        iconaction: Icons.search ,
        ontap: (){
          Get.to(ChatArchive());
        },
        onTaptwo: (){
          Get.to(SearchScreen());
        },

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(height: 120.h,),
              Image.asset('assets/images/introchat.png',fit: BoxFit.cover,alignment: Alignment.center,),
              SizedBox(height: 80.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShape(
                    text: translator.translate('login'),
                    icon: Icons.arrow_forward_ios,
                    ontap: (){
                      Get.to(ChatArchive());
                    },
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
