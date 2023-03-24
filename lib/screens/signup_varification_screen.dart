import 'package:delivery_app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_text_theme.dart';
import '../config/spacing.dart';
import '../routes/routes_manager.dart';
import '../widgets/appBar_widgets.dart';
import '../widgets/custom_button.dart';

class SignupVarificationScreen extends StatefulWidget {
  const SignupVarificationScreen({Key? key}) : super(key: key);

  @override
  State<SignupVarificationScreen> createState() => _SignupVarificationScreenState();
}

class _SignupVarificationScreenState extends State<SignupVarificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/logo.png")),
          verticalSpace(60.h),
          Text(
            "Enter verification code",
            style: AppTextTheme.displaLarge,
          ),
          verticalSpace(10.h),
          Text(
            "Enter 4  digit code that send to \nyour mobile",
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
          CustomButton(title: "CONTINUE",height: 50.h,width: 280.w,onTap: (){
            Navigator.of(context).pushNamed(RoutesManager.drivingPartnerView);
          },),
          verticalSpace(10.h),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              "0:00 Time Remaining",
              style: AppTextTheme.labeltextFromField,
              textAlign: TextAlign.right,
            ),
          ),
          verticalSpace(10.h),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Haven’t received yet ? ",
                  style: AppTextTheme.labeltextFromField,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RoutesManager.signupView);
                    },
                    child: Text(
                      " Resend now",
                      style: AppTextTheme.signup,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
