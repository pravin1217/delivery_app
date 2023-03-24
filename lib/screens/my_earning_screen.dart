import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyEarningScreen extends StatefulWidget {
  const MyEarningScreen({Key? key}) : super(key: key);

  @override
  State<MyEarningScreen> createState() => _MyEarningScreenState();
}

class _MyEarningScreenState extends State<MyEarningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(title: "My Earning",centertitle: true,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(title: 'Download Earning Report', width: 300.w, height: 50.h,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
              children: [
                verticalSpace(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total Earning",style: AppTextTheme.displayMedium,),
                    horizontalSpace(80.w),
                    Text("₹5,000",style: AppTextTheme.earning,),
                  ],
                ),
                verticalSpace(50.h),
                CustomButton(title: "Redeem Money", height: 40.h, width: 300.w),
                verticalSpace(10.h),
                Divider(color: AppColors.lightBlack,),
                Row(
                  children: [
                    Text("Transaction History",style: AppTextTheme.labelLarge,),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: ListView(
                    children: [
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                      subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Installation of Music System ",style: AppTextTheme.myearninglist,),
                      subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('+₹500',style: AppTextTheme.termsdrawer,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Installation of Music System ",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('+₹500',style: AppTextTheme.termsdrawer,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Installation of Music System ",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('+₹500',style: AppTextTheme.termsdrawer,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                      ListTile(title: Text("Commission debited",style: AppTextTheme.myearninglist,),
                        subtitle: Text("6 Days ago",style: AppTextTheme.myearninglist2,),
                        trailing: Text('-₹150',style: AppTextTheme.myearningamount,),
                      ),
                    ],
                  ),
                )
              ],
        ),
      ),
    );
  }
}
