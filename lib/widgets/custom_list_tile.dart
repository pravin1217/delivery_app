import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: AppColors.lightBlack,
          ),
        ),
        leading: Image.asset("assets/images/listtileperson.png"),
        title: Text(
          'Russel Taylor',
          style: AppTextTheme.displayMedium,
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Grocery Delivery",
              style: AppTextTheme.displaySmall,
            ),
            verticalSpace(5.h),
            Text(
              "Monday",
              style: AppTextTheme.titleLarge,
            ),
            verticalSpace(10.h),
            Container(
              height: 30.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: AppColors.aquaMarine,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Bill no. :  12345",
                style: AppTextTheme.button,
              )),
            )
          ],
        ),
        trailing: Column(
          children: [
            Image.asset("assets/images/callgreen.png"),
            verticalSpace(10.h),
            Image.asset("assets/images/callchat.png"),
          ],
        ),
      ),
    );
  }
}
