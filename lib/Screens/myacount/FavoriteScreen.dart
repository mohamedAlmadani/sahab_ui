import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/SearchScreen.dart';
import 'package:sahab/Screens/home/home.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icons.arrow_back_ios,


          text: translator.translate('Favorite'),
          iconaction: Icons.search ,
          onTaptwo: (){
        Get.to(SearchScreen());
          },
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
              SizedBox(height: 25.h,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 35.w,vertical: 1.h),
                    width: double.infinity,
                    height: 140.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      // color: Colors.red,
                      border: Border.all(color: Colors.grey,width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:   EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 216.0.w,
                                height: 46.0.h,
                                child: Text(
                                  'قزازة شمعة مرسيدس 2011-2015 جيب ML350',
                                  style: TextStyle(
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontSize: 16.0,
                                    color: Color(0xFF272727),
                                    letterSpacing: 0.016,
                                    fontWeight: FontWeight.w300,
                                    height: 1.13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:   EdgeInsets.symmetric(horizontal: 7.w,vertical: 0.h),

                                child: Text(
                                  'منذ 1 ساعة',
                                  style: TextStyle(
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontSize: 13.0,
                                    color: Color(0xFFA2A2A2),
                                    letterSpacing: 0.013000000000000001,
                                    height: 1.46,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:   EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.h),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color(0xFF355ABE),
                                    ),
                                    Text(
                                      'محمود خالد',
                                      style: TextStyle(
                                        fontFamily: 'GE_SS_Two_Medium',
                                        fontSize: 13.0,
                                        color: Color(0xFF272727),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xFF355ABE),
                                  ),
                                  Text(
                                    ' الرياض',
                                    style: TextStyle(
                                      fontFamily: 'GE_SS_Two_Medium',
                                      fontSize: 13.0,
                                      color: Color(0xFF272727),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 108.0.w,
                            height: 107.0.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/car.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 35.w,vertical: 1.h),
                    width: double.infinity,
                    height: 140.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      // color: Colors.red,
                      border: Border.all(color: Colors.grey,width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:   EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 216.0.w,
                                height: 46.0.h,
                                child: Text(
                                  'قزازة شمعة مرسيدس 2011-2015 جيب ML350',
                                  style: TextStyle(
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontSize: 16.0,
                                    color: Color(0xFF272727),
                                    letterSpacing: 0.016,
                                    fontWeight: FontWeight.w300,
                                    height: 1.13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:   EdgeInsets.symmetric(horizontal: 7.w,vertical: 0.h),

                                child: Text(
                                  'منذ 1 ساعة',
                                  style: TextStyle(
                                    fontFamily: 'GE_SS_Two_Medium',
                                    fontSize: 13.0,
                                    color: Color(0xFFA2A2A2),
                                    letterSpacing: 0.013000000000000001,
                                    height: 1.46,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:   EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.h),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color(0xFF355ABE),
                                    ),
                                    Text(
                                      'محمود خالد',
                                      style: TextStyle(
                                        fontFamily: 'GE_SS_Two_Medium',
                                        fontSize: 13.0,
                                        color: Color(0xFF272727),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xFF355ABE),
                                  ),
                                  Text(
                                    ' الرياض',
                                    style: TextStyle(
                                      fontFamily: 'GE_SS_Two_Medium',
                                      fontSize: 13.0,
                                      color: Color(0xFF272727),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 108.0.w,
                            height: 107.0.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/car.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )

            ],
          ),
        ),
      ),
    );
  }
}
