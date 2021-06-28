import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'package:flutterStock/utils/AppColors.dart';
// import 'package:flutterdemo/utils/fontStyle.dart';
import 'package:flutterStock/utils/no_splash.dart';

import 'package:flutterStock/Pages/Root/mainroot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(AppColors.themeColor),
          accentColor: Color(AppColors.themeColor),
          splashFactory: const NoSplashFactory(),
          scaffoldBackgroundColor: Color(AppColors.themeColor),
          // primaryTextTheme: TextTheme()
        ),
        home: MainRootPage(),
      ),
    );
  }
}
