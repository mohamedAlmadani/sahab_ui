import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';


import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'package:sahab/Screens/ath/LoginScreen.dart';
import 'package:sahab/Widget/customshap.dart';
import 'package:sahab/Widget/slide_dots.dart';
import 'package:sahab/Widget/slide_item.dart';
import 'package:sahab/models/slider.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void nextPage() {
    _pageController
        .animateToPage(_pageController.initialPage,
            duration: Duration(milliseconds: 400), curve: Curves.easeIn)
        .then((value) => Get.off(LoginScreen()));
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: slideList.length,
                itemBuilder: (ctx, i) => SlideItem(i),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomShape(
                  text: translator.translate('Next'),
                  icon: Icons.arrow_forward_ios,
                  edgeInsets: EdgeInsets.symmetric(vertical: 55),
                  ontap: () {
                    nextPage();
                  },
                ),
                SizedBox(
                  width: 110.w,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 80.h),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                   // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < slideList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),

                // GestureDetector(
                //   onTap: (){
                //     nextPage();
                //   },
                //   child: Transform.translate(
                //     offset: Offset(20.w,-30.h),
                //     child: Container(
                //       decoration: BoxDecoration(
                //         color: Color(0xFF355ABE),
                //         shape: BoxShape.rectangle,
                //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),topLeft:Radius.circular(16) )
                //       ),
                //       width: 115.0.w,
                //       height: 57.0.h,
                //       // color: Color(0xFF355ABE),
                //       alignment: Alignment.center,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //
                //         children: [
                //           // Group: Group 8772
                //
                //
                //           Icon(Icons.arrow_back_ios,color: Colors.white,size: 19,),
                //           SizedBox(width: 20.w,),
                //           Text('التالي',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontFamily: 'GE_SS_Two_Medium',fontSize: 16,)),
                //
                //
                //         ],
                //       ),
                //
                //     ),
                //   ),
                // ),
                // Group: Group 8961
              ],
            )
          ],
        ),
      ),
    );
  }
}
