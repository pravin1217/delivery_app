import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_button.dart';
import '../widgets/text_form_field_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/logo.png")),
          verticalSpace(60.h),
          Text(
            "Welcome Back",
            style: AppTextTheme.displaLarge,
          ),
          verticalSpace(10.h),
          Text(
            "Sign in to get started and experience\n great shopping deals",
            style: AppTextTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          verticalSpace(30.h),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFromFieldCustom(
              title: "Employee ID",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: TextFromFieldCustom(
              title: "Password",
            ),
          ),
          verticalSpace(80.h),
          CustomButton(
            height: 50.h,
            width: 330.h,
            title: 'Login',
            onTap: () {
              Navigator.of(context).pushNamed(RoutesManager.homeView);
            },
          ),
          verticalSpace(20.h),
          Padding(
            padding: const EdgeInsets.only(left: 180.0),
            child: Text(
              "Forgot Password?",
              style: AppTextTheme.labeltextFromField,
              textAlign: TextAlign.right,
            ),
          ),
          verticalSpace(50.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I don’t have an account !",
                style: AppTextTheme.labeltextFromField,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RoutesManager.signupView);
                  },
                  child: Text(
                    " SIGNUP",
                    style: AppTextTheme.signup,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
