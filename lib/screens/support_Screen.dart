import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(title: "Support",centertitle: true,),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
            verticalSpace(30.h),
            Container(
              height: 50.h,
              // width: width,
              child: TextFormField(
                decoration: InputDecoration(label: Text("Name",style: AppTextTheme.labelLarge,),


                  labelStyle: AppTextTheme.signlabeltextFromField,

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightBlack,

                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: AppColors.lightBlack,

                    ),
                  ),
                ),

              ),
            ),
            verticalSpace(20.h),
            Container(
              height: 50.h,
              // width: width,
              child: TextFormField(
                decoration: InputDecoration(label: Text("Email Address",style: AppTextTheme.labelLarge,),


                  labelStyle: AppTextTheme.signlabeltextFromField,

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightBlack,

                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: AppColors.lightBlack,

                    ),
                  ),
                ),

              ),
            ),
            verticalSpace(20.h),
            TextFormField(
              minLines: 8,
              maxLines: 8,
              decoration: InputDecoration(
                label: Text("Write here",style: AppTextTheme.labelLarge,textAlign: TextAlign.start,),
                labelStyle: AppTextTheme.signlabeltextFromField,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.lightBlack,

                  ),
                  borderRadius: BorderRadius.circular(15),

                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.lightBlack,

                  ),
                ),
              ),

            ),
            verticalSpace(80.h),
              
              CustomButton(title: "Submit", height: 50.h, width: 300.w,onTap: (){
                Navigator.of(context).pop();
              },)
          ],),
        ),
      ),
    );
  }
}
