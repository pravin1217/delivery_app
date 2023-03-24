import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverRegisterTextField extends StatelessWidget {
  final String title;
  const DriverRegisterTextField({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      // width: width,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text("$title"),
          labelStyle: AppTextTheme.titleMedium,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.grey)
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.grey)
      ),
        ),

      ),
    );
  }
}
