import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/IntroScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sahab/Screens/ath/LoginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['en', 'ar'],
    assetsDirectory: 'assets/langs/',
    // NOT YET TESTED
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatefulWidget {


  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(392.72727272727275,737.4545454545455),


      builder:() => GetMaterialApp(


        debugShowCheckedModeBanner: false,
        title: 'sahab Application',
        localizationsDelegates: translator.delegates,
        locale: translator.locale,
        supportedLocales: translator.locals(),
        // localizationsDelegates: AppLocalizations.localizationsDelegates,
        // supportedLocales: AppLocalizations.supportedLocales,

        home: SpalashScreen(),
      ),
    );
  }
}

class SpalashScreen extends StatefulWidget {
  @override
  _SpalashScreenState createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IntroScreen()),
    )

        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            SizedBox(
              height: 40,
            ),
            Text(
              'SAHAB',
              style: TextStyle(
                fontSize: 32.0,
                color: const Color(0xFF355ABE),
                letterSpacing: 0.032,
                fontWeight: FontWeight.w700,
                height: 0.03,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
