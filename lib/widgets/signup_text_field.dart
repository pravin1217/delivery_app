import 'package:delivery_app/config/app_colors.dart';
import 'package:flutter/material.dart';

import '../config/app_text_theme.dart';

class SignupTextField extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  bool obscureText;
   Widget? suffixIcon;
   SignupTextField({Key? key, required this.title, required this.height, required this.width,this.suffixIcon = const Text(""),this.obscureText=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(label: Text("$title",style: AppTextTheme.labeltextFromField,),

          fillColor: AppColors.lightaquaMarine,
          filled: true,
          labelStyle: AppTextTheme.signlabeltextFromField,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightaquaMarine,

            ),
            borderRadius: BorderRadius.circular(15),
            
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
            color: AppColors.lightaquaMarine,

          ),
          ),
        ),

      ),
    );
  }
}
