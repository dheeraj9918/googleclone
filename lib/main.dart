import 'package:flutter/material.dart';
import 'package:google_search_clone/Resposnive/mobile_screen_layout.dart';
import 'package:google_search_clone/Resposnive/responsive_layout_screen.dart';
import 'package:google_search_clone/Resposnive/web_srceen_layout.dart';
import 'package:google_search_clone/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Search',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResposniveLayoutScreen(
        mobileSrceenLayout: MobileScreenLayout(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
