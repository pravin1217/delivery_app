import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/routes/routes_manager.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appBar_widgets.dart';
import '../widgets/driverregister_text_form_field.dart';
import '../widgets/image_picker_box.dart';

class DrivingPartnerScreen extends StatefulWidget {
  const DrivingPartnerScreen({Key? key}) : super(key: key);

  @override
  State<DrivingPartnerScreen> createState() => _DrivingPartnerScreenState();
}

class _DrivingPartnerScreenState extends State<DrivingPartnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(
        title: "Become Our Driving Partner",
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
                      Text("Driver’s Details", style: AppTextTheme.titleMedium)),
              verticalSpace(20.h),
              DriverRegisterTextField(
                title: "Enter Your Name",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Contact Number",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Enter Alternate Number (If any)",
              ),
              verticalSpace(10.h),
              DriverRegisterTextField(
                title: "Email Id (If any)",
              ),
              verticalSpace(30.h),
              Padding(
                padding: const EdgeInsets.only(right: 210.0),
                child:
                    Text("Upload Your Document", style: AppTextTheme.titleLarge),
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
                  Text("Aadhar Card",style: AppTextTheme.headlineSmall,)
                ],
              ),
              verticalSpace(10.h),
              ImagePickerBox(iconimg: "assets/images/aadhar.png",title: "Upload Your Aadhar Card",),
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
                  Text("PAN Card",style: AppTextTheme.headlineSmall,)
                ],
              ),
              verticalSpace(10.h),
              ImagePickerBox(iconimg: "assets/images/pan.png",title: "Upload Your PAN Card",),
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
                            "3.",
                            style: AppTextTheme.displaySmall,
                          ))),
                  horizontalSpace(10.w),
                  Text("Driving License",style: AppTextTheme.headlineSmall,)
                ],
              ),
              verticalSpace(10.h),
              ImagePickerBox(iconimg: "assets/images/driving.png",title: "Upload Your Driving Licence",),
              verticalSpace(20.h),
              CustomButton(title: "SUBMIT", height: 50.h, width: 350.w,onTap: (){
                Navigator.of(context).pushNamed(RoutesManager.registerVehicleView);
              },),
              verticalSpace(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
