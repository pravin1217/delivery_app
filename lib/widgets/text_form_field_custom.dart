import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:flutter/material.dart';

class TextFromFieldCustom extends StatelessWidget {
  final String title;
  Widget? suffixIcon;
   TextFromFieldCustom({Key? key, required this.title,this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(

        decoration: InputDecoration(
          label: Text("$title"),
          labelStyle: AppTextTheme.labeltextFromField,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightBlack)
        ),
          suffixIcon: suffixIcon
        ),

    );
  }
}
