import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sahab/Screens/home/DetailsProductScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const String routeName = '/main_screen';

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        DetailsProduct(),
        DetailsProduct(),
        DetailsProduct(),
        DetailsProduct(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 30.h,
            child: Container(
                width: 30.w,
                height: 30.h,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Expanded(
                    child: Icon(
                  Icons.favorite,
                ))),
          ),
          title: ("  المفضلة"),
          textStyle: TextStyle(
            color: Color(0xFF355ABE),
            fontSize: 18,
            fontFamily: 'GE_SS_Two_Medium',
          ),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemBlue,
        ),
        PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 30.h,
            child: Container(
                width: 30.w,
                height: 30.h,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child:
                    Expanded(child: Image.asset('assets/images/review.png'))),
          ),
          title: ("  اعادة ارسال"),
          textStyle: TextStyle(
            color: Color(0xFF355ABE),
            fontSize: 18,
            fontFamily: 'GE_SS_Two_Medium',
          ),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemBlue,
        ),
        PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 30.h,
            child: Container(
                width: 30.w,
                height: 30.h,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Expanded(child: Icon(Icons.phone))),
          ),
          title: ("  هاتف"),
          textStyle: TextStyle(
            color: Color(0xFF355ABE),
            fontSize: 18,
            fontFamily: 'GE_SS_Two_Medium',
          ),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemBlue,
        ),
        PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 30.h,
            child: Container(
                width: 30.w,
                height: 30.h,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Expanded(
                    child: Image.asset(
                  'assets/images/chat.png',
                  color: Color(0xFF355ABE),
                ))),
          ),
          title: ("  مراسلة"),
          textStyle: TextStyle(
            color: Color(0xFF355ABE),
            fontSize: 18,
            fontFamily: 'GE_SS_Two_Medium',
          ),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemBlue,
        ),


      ];
    }

    return Scaffold(
      body: PersistentTabView(
        context,
        navBarHeight: 65,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Color(0xFF355ABE),

        handleAndroidBackButtonPress: true,

        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears.
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
        // decoration: NavBarDecoration(
        //   borderRadius: BorderRadius.circular(10.0),
        //   colorBehindNavBar: Colors.white,
        // ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,

          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style9,

        // Choose the nav bar style with this property.
      ),
    );
  }
}
