import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePickerBox extends StatelessWidget {
  final String iconimg;
  final String title;
  const ImagePickerBox({Key? key, required this.iconimg, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 100,
          color: Colors.black12,
         child: Row(
           children: [
             horizontalSpace(20.w),
             Image.asset("$iconimg"),
             horizontalSpace(20.w),
             Text("$title",style: AppTextTheme.titleMedium,),
           ],
         ),
        ),
      ),
    );
  }
}
