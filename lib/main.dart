import 'package:delivery_app/routes/routes_manager.dart';
import 'package:delivery_app/screens/intro_slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 920),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) =>MaterialApp(
        title: 'Delivery App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const IntroSliderScreen(),
        onGenerateRoute: RoutesManager.generatedRoute,
      ),

    );
  }
}


