import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab/Screens/FavoriteScreen.dart';
import 'package:sahab/Screens/ath/EdithAccount.dart';
import 'package:sahab/Screens/ath/Forgot%20password.dart';
import 'package:sahab/Screens/myads.dart';
import 'package:sahab/Widget/CustomInsideDrawer.dart';

class PersonScreen extends StatefulWidget {
  @override
  _PersonScreenState createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
          translator.translate('MyAccount'),
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
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(0.w, 130.h),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF355ABE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              width: double.infinity,
              height: 560.h,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 80.h, horizontal: 140.w),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/ownerdetail.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'اسم المستخدم',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    '5992423222',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 140.h, horizontal: 50.w),
            child: ListTile(
              leading: Column(
                children: [
                  Text(
                    'إعلاناتي',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '23',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  Text(
                    'المفضلة',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-30.w, 250.h),
            child: Column(
              children: [
                CustomInsideDrawer(
                  image: 'assets/images/myaccount/Path.png',
                  title: 'تعديل حسابي',
                  ontap: (){
                    Get.to(EdithAccount());
                  },
                ),
                CustomInsideDrawer(
                  image: 'assets/images/myaccount/ads.png',
                  title: 'اعلاناتي',
                ontap: (){
                    Get.to(MyAds());
                },


                ),
                CustomInsideDrawer(
                  image: 'assets/images/myaccount/love.png',
                  title: ' المفضلة',
                  ontap: (){
                    Get.to(FavoriteScreen());
                  },
                ),
                CustomInsideDrawer(
                  image: 'assets/images/myaccount/padlock.png',
                  title: 'تغير كلمة المرور',
                  ontap: (){
                    Get.to(ForgotPassword());
                  },
                ),
                CustomInsideDrawer(
                  image: 'assets/images/myaccount/singout.png',
                  title: 'تسجيل خروج',
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
