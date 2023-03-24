import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';
import '../config/spacing.dart';
import '../routes/routes_manager.dart';
import '../widgets/appBar_widgets.dart';
import '../widgets/custom_button.dart';

class CustomOtpScreen extends StatelessWidget {
  final String title;
  const CustomOtpScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(title: "$title",centertitle: true,),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(child: Image.asset("assets/images/logo.png")),
          verticalSpace(100.h),
          Text(
            "Enter verification code",
            style: AppTextTheme.displaLarge,
          ),
          verticalSpace(10.h),
          Text(
            "Enter 4  digit code that send to \nyour mobile to end this order",
            style: AppTextTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          verticalSpace(50.h),
          OtpTextField(
            numberOfFields: 4,
            borderColor: AppColors.white,
            showFieldAsBox: true,
            hasCustomInputDecoration: true,
            margin: EdgeInsets.all(20),
            decoration: InputDecoration(

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: AppColors.lightBlack,

                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.lightBlack,

                ),
                borderRadius: BorderRadius.circular(15),

              ),
            ),
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
          ),
          verticalSpace(50.h),

          GestureDetector(
            onTap: (){},
            child: Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(color: AppColors.aquaMarine,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("CONTINUE",style: AppTextTheme.button,)),
            ),
          ),
          verticalSpace(10.h),

          verticalSpace(10.h),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do not receive code?",
                  style: AppTextTheme.labeltextFromField,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RoutesManager.signupView);
                    },
                    child: Text(
                      "  Resend it",
                      style:TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
                          fontFamily: "Inter"
                        // fontFamily: defaultFont,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
