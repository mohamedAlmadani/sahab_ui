import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahab/Screens/SearchScreen.dart';
import 'package:sahab/Screens/home/home.dart';
import 'package:sahab/Widget/TextStyleWidget.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsProduct extends StatefulWidget {

  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icons.arrow_back_ios,


          text:'سيارات هافال',

          iconaction: Icons.search ,
          ontap: (){
            Get.to(Home());
          },
          onTaptwo: (){
            Get.to(SearchScreen());

    },

      ),
      body: SingleChildScrollView(
        child:Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 22.h,),
              CustomText(
                text: ' هايلوكس 2018 مكينة 2700 بنزين GL',
                numsize: 16,
                namecolor: Color(0xFF272727),
                namefamily: 'GE_SS_Two_Medium',
                namefont: FontWeight.w500,
                margin: EdgeInsets.only(right: 12.w),

              ),
              CustomText(
                text: 'قبل ٢ دقيقة',
                numsize: 16,
                namecolor: Color(0xFF383636),
                namefamily: 'GE_SS_Two_Medium',

                margin: EdgeInsets.only(right: 12.w,top: 8.h)),





              Container(
                margin: EdgeInsets.only(top: 10.h),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/bg.png')),

              CustomText(
                text: 'تفاصيل الأعلان',
                numsize: 18,
                namecolor: Color(0xFF272727),
                namefamily: 'GE_SS_Two_Medium',
                namefont: FontWeight.w900,
                margin: EdgeInsets.only(right: 10.w,top: 10.h),

              ),
              CustomText(
                text:               'هذا النص هو مثال لنص يمكن أن يستبدل في نفس , المساحة، لقد تم توليد هذا النص من مولد النص , هذا النص هو مثال لنص يمكن أن يستبدل في نفس , المساحة\n\nهذا النص هو مثال لنص يمكن أن يستبدل في نفس , المساحة، لقد تم توليد هذا النص من مولد النص',
                numsize: 14,
                namecolor:  Color(0xFF272727),
                namefamily: 'GE_SS_Two_Medium',
                namefont: FontWeight.w300,
                margin: EdgeInsets.only(right: 10.w,top: 10.h),
              ),

              Container(
                margin: EdgeInsets.only(right: 5.w,top: 10.h),
                child: ListTile(

                   leading:     CircleAvatar(
                     backgroundImage:
                     AssetImage('assets/images/ownerdetail.png'),
                     radius: 30,
                   ),
                  title: Text(
                    'محمد الخالصي',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 14.0,
                      color: const Color(0xFF272727),
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                  subtitle: Text(
                    'السعودية , الرياض',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 14.0,
                      color: const Color(0xFF272727),
                      fontWeight: FontWeight.w300,

                    ),
                  ),
                  trailing: Container(
                    width: 40.w,
                     height: 40.h,
                  decoration: BoxDecoration(
                shape: BoxShape.circle,
                    color: Color(0xFFE4E4E4)
                  ),
                    child: Icon(Icons.add,color: Colors.blue,),
                  ),
                ),
              ),
              CustomText(
                text: 'اعلانات مشابهة',
                numsize: 18,
                namecolor: Color(0xFF272727),
                namefamily: 'GE_SS_Two_Medium',
                namefont: FontWeight.w900,
                margin: EdgeInsets.only(right: 10.w,top: 10.h),

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                        // Spacer(),
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


            ],
          ),
        ) ,
      ),
    );
  }
}
