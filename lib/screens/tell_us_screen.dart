import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';

class TellUsScreen extends StatelessWidget {
  const TellUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Tell us the reason",
              style: AppTextTheme.displayMedium,
            )),
            verticalSpace(100.h),
            TextField(
              keyboardType: TextInputType.multiline,
              minLines: 8,
              maxLines: 8,
              autofocus: true,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: 'Tell us why are you cancelling',
                hintStyle: AppTextTheme.labelLarge,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.lightBlack,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            verticalSpace(50.h),
            CustomButton(title: "Proceed", height: 50.h, width: 300.w)
          ],
        ),
      ),
    );
  }
}
