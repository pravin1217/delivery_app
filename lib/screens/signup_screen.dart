import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/widgets/signup_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_text_theme.dart';
import '../routes/routes_manager.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = true;
  bool _passwordVisiblepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(80.h),
            Center(child: Image.asset("assets/images/signup.png")),
            verticalSpace(60.h),
            SignupTextField(title: "Name",
            height: 50.h,
              width: 330.w,
            ),
            verticalSpace(10.h),
            SignupTextField(title: "Email",
            height: 50.h,
              width: 330.w,
            ),
            verticalSpace(10.h),
            SignupTextField(title: "Phone Number",
              height: 50.h,
              width: 330.w,
            ),
            verticalSpace(10.h),
            SignupTextField(title: "Password",
              height: 50.h,
              width: 330.w,
                obscureText:_passwordVisiblepass,
                suffixIcon:  IconButton(
                  color: AppColors.lightBlack,
                  icon: Icon(
                    _passwordVisiblepass
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisiblepass = !_passwordVisiblepass;
                    });
                  },
                )
            ),
            verticalSpace(10.h),
            SignupTextField(title: "Confirm Passwords",
              height: 50.h,
              width: 330.w,
    obscureText:_passwordVisible,
              suffixIcon:  IconButton(
                color: AppColors.lightBlack,
                icon: Icon(
                  _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
            ),
            verticalSpace(10.h),
            SignupTextField(title: "Location",
              height: 50.h,
              width: 330.w,
              suffixIcon: Icon(Icons.location_on_outlined,color:AppColors.lightBlack,),
            ),
            verticalSpace(20.h),
            CustomButton(title: "Sign up",height: 50.h,width: 200.w,onTap: (){
              Navigator.of(context).pushNamed(RoutesManager.signupverificationView);
            },),
            verticalSpace(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),
                horizontalSpace(10.w),
                Text("OR",style: AppTextTheme.labeltextFromField,),
                horizontalSpace(10.w),
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),

              ],
            ),
            verticalSpace(10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I have an account! ",
                  style: AppTextTheme.labeltextFromField,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RoutesManager.loginView);
                    },
                    child: Text(
                      " Log in",
                      style: AppTextTheme.signup,
                    )),
              ],
            ),
            verticalSpace(30.h),
            Text("Terms & Condition",style: AppTextTheme.displaySmall,),
          ],
        ),
      ),
    );
  }
}
