import 'package:delivery_app/config/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final String img;
  final GestureTapCallback? onTap;
  const CustomButtonWithIcon({Key? key, required this.title, required this.height, required this.width, this.onTap, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: AppColors.white,
            borderRadius: BorderRadius.circular(15)),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("$img"),
            horizontalSpace(20.w),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Text("$title",style: AppTextTheme.displayMedium),
            ),
          ],
        )),
      ),
    );
  }
}
