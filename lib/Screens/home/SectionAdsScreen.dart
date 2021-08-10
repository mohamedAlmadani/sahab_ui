import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/myacount/AboutTheAppScreen.dart';
import 'package:sahab/Screens/myacount/CallUsScreen.dart';
import 'package:sahab/Screens/home/DetailsProductScreen.dart';
import 'package:sahab/Screens/home/MainScreenProduct.dart';
import 'package:sahab/Screens/home/sectionsScreen.dart';
import 'package:sahab/Screens/ath/LoginScreen.dart';
import 'package:sahab/Screens/ath/SignUpScreen.dart';
import 'package:sahab/Screens/ath/changePasswordScreen.dart';
import 'package:sahab/Widget/CustomInsideDrawer.dart';
import 'package:sahab/Widget/appbar_widget.dart';

class SectionAds extends StatefulWidget {
  @override
  _SectionAdsState createState() => _SectionAdsState();
}

class _SectionAdsState extends State<SectionAds> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  int currentTab = 0;
  final List<Widget> screens = [
    SectionsScreen(),
    SignUp(),
    LoginScreen(),
    ChangePassword(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = SectionAds();

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey(); // add this

    return Scaffold(
      drawer: customDrawer(),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.grey,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          ' سيارات هافال',
          style: TextStyle(
              color: Color(0xFF355ABE),
              fontFamily: 'GE_SS_Two_Medium',
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
      ),

      // CustomAppBar(text: 'سيارات هافال',icon: Icons.filter_list,ontap: (){
      //   Scaffold.of(context).openEndDrawer();
      // }),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      expands: false,
                      decoration: InputDecoration(
                          hintText: translator.translate('SearchHint'),
                          hintStyle: TextStyle(
                            color: Color(0xFFA2A2A2),
                            fontSize: 18,
                            fontFamily: 'GE_SS_Two_Medium',
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: Color(0xffF5F5F5),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                    width: 65.0.w,
                    height: 65.0.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF355ABE),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                ),
                items: imgList
                    .map((item) => Container(
                          width: double.infinity,
                          child: Center(
                              child: Image.network(
                            item,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(MainScreen());
                },
                child: Padding(
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
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.w, vertical: 0.h),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1.w, vertical: 0.h),
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
                                SizedBox(
                                  height: 5.h,
                                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFF355ABE),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomInsideDrawer(
                image: 'assets/images/aboutapp.png',
                title: 'عن التطبيق',
                ontap: () {
                  Get.to(AboutTheApp());
                },
              ),
              CustomInsideDrawer(
                image: 'assets/images/audit.png',
                title: 'سياسة الاستخدام',
              ),
              CustomInsideDrawer(
                image: 'assets/images/call.png',
                title: 'اتصل بنا',
                ontap: () {
                  Get.to(CallUs());
                },
              ),
              CustomInsideDrawer(
                image: 'assets/images/translate.png',
                title: '${translator.translate('buttonTitle')}',
                ontap: (){
                  translator.setNewLanguage(
                    context,
                    newLanguage:
                    translator.currentLanguage == 'ar' ? 'en' : 'ar',
                    remember: true,
                    restart: true,
                  );

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
