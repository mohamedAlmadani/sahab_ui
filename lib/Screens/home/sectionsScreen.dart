import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home/SectionAdsScreen.dart';
import 'package:sahab/Screens/ath/LoginScreen.dart';
import 'package:sahab/Screens/home/home.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';

class SectionsScreen extends StatefulWidget {
  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: (){
              Get.to(LoginScreen());

            },
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              CustomContinertab(
                text: translator.translate('cars'),
              ),
              CustomContinertab(
                text: translator.translate('realEstates'),
              ),
              CustomContinertab(
                text: translator.translate('foodTruck'),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          child: TabBarView(children: [
            cars(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ),
      ),
    );
  }

  Widget cars() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 30.w),
          child: CustomText(
            text: translator.translate('AdCategories'),
            namefamily: 'GE_SS_Two_Medium',
            numsize: 20,
            namecolor: Color(0xFF272727),
            namefont: FontWeight.w700,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(Home());
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 1.h),
            width: 325.0.w,
            height: 84.0.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                // color: Colors.red,
                border: Border.all(color: Colors.grey,width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('محمد',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 15.0,
                      color: Color(0xFF272727),
                      fontWeight: FontWeight.w300,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '22',
                      style: TextStyle(
                        fontFamily: 'GE_SS_Two_Medium',
                        fontSize: 15.0,
                        color: Color(0xFF272727),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text('اعلان',
                        style: TextStyle(
                          fontFamily: 'GE_SS_Two_Medium',
                          fontSize: 15.0,
                          color: Color(0xFF272727),
                          fontWeight: FontWeight.w300,
                        ))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomContinertab extends StatelessWidget {
  String? text;
  CustomContinertab({this.text});
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment(0.06.w, -0.25.h),
      width: 96.0.w,
      height: 37.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Color(0xFF355ABE),
      ),
      child: Text(
        text??'',
        style: TextStyle(
          fontFamily: 'GE_SS_Two_Medium',
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
