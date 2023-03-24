import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final GestureTapCallback? onTap;
  const CustomButton(
      {Key? key,
      required this.title,
      required this.height,
      required this.width, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: AppColors.aquaMarine,
        borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text("$title",style: AppTextTheme.button,)),
      ),
    );
  }
}
