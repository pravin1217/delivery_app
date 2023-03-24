import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/text_form_field_custom.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarWidgets(title: "Profile",centertitle: true,),
      body: Column(
        children: [
          Container(
            height: 150.h,
            child: Stack(
              children: [
                Container(
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: AppColors.aquaMarine
                  ),

                ),
                Center(heightFactor: 4.0,child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.aquaMarine,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dashbord.png'),
                          radius: 46,

                        ),
                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                TextFromFieldCustom(title: 'Add Name',suffixIcon: Icon(Icons.arrow_forward_ios,color: AppColors.aquaMarine),),
                verticalSpace(10.h),
                TextFromFieldCustom(title: 'Enter email ID',suffixIcon: Icon(Icons.arrow_forward_ios,color: AppColors.aquaMarine),),
                verticalSpace(10.h),
                TextFromFieldCustom(title: 'Phone Number',suffixIcon: Icon(Icons.arrow_forward_ios,color: AppColors.aquaMarine),),
                verticalSpace(10.h),
                TextFromFieldCustom(title: 'Set password',suffixIcon: Icon(Icons.arrow_forward_ios,color: AppColors.aquaMarine),),
                verticalSpace(20.h),
                Row(
                  children: [
                    Text("Order Acceptance",style: AppTextTheme.labelnew,),
                    horizontalSpace(180.w),
                    CupertinoSwitch(value: true,activeColor: AppColors.toggleon, onChanged: (bool value) {  },)
                  ],
                ),
                verticalSpace(10.0),
                Text("Timing of Order accepting (starting)",style: AppTextTheme.profiletiming,),
                verticalSpace(10.0),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid,color: AppColors.lightBlack),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      TextFormField(),


                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
