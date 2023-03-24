import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  }),
  brightness: Brightness.light,
  primaryColor: AppColors.aquaMarine,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Poppins",
);

// ThemeData darkTheme = ThemeData();
