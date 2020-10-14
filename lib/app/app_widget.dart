/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/pages/dashboard_page/dashboard.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'font_main'),
          bodyText2: TextStyle(fontFamily: 'font_main')
        )
      ),
      title: 'E-Commerce',
      home: DashboardPage(),
    );
  }
}
