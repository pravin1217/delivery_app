import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';
import '../config/spacing.dart';
import '../routes/routes_manager.dart';
import '../widgets/appBar_widgets.dart';
import '../widgets/custom_button.dart';
import '../widgets/driverregister_text_form_field.dart';
import '../widgets/image_picker_box.dart';

class RegisterVehicleScreen extends StatefulWidget {
  const RegisterVehicleScreen({Key? key}) : super(key: key);

  @override
  State<RegisterVehicleScreen> createState() => _RegisterVehicleScreenState();
}

class _RegisterVehicleScreenState extends State<RegisterVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(
        title: "Register Your Vehicle",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child:
                  Text("Vehicle’s Details", style: AppTextTheme.titleMedium)),
              verticalSpace(20.h),
              DriverRegisterTextField(
                title: "Vehicle Type :",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Vehicle Model Name",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Vehicle Number",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Vehicle Pollution Card Number",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Vehicle Insurance Number",
              ),
              verticalSpace(30.h),
              Padding(
                padding: const EdgeInsets.only(right: 210.0),
                child:
                Text("Upload Vehicle Image", style: AppTextTheme.titleLarge),
              ),
              verticalSpace(10.h),
              Row(
                children: [
                  CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColors.black,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.white,
                          child: Text(
                            "1.",
                            style: AppTextTheme.displaySmall,
                          ))),
                  horizontalSpace(10.w),
                  Text("Vehicle Image",style: AppTextTheme.headlineSmall,)
                ],
              ),
              verticalSpace(10.h),
              ImagePickerBox(iconimg: "assets/images/vehicle.png",title: "Upload Your Vehicle Image",),
              verticalSpace(10.h),
              Row(
                children: [
                  CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColors.black,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.white,
                          child: Text(
                            "2.",
                            style: AppTextTheme.displaySmall,
                          ))),
                  horizontalSpace(10.w),
                  Text("Registration Certificate",style: AppTextTheme.headlineSmall,)
                ],
              ),
              verticalSpace(10.h),
              ImagePickerBox(iconimg: "assets/images/driving.png",title: "Upload Your Registration Certificate",),
              verticalSpace(20.h),
              CustomButton(title: "SUBMIT", height: 50.h, width: 350.w,onTap: (){
                Navigator.of(context).pushNamed(RoutesManager.homeView);
              },),
              verticalSpace(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
