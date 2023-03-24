import 'dart:convert';

import 'package:delivery_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';
import '../config/spacing.dart';
import '../routes/routes_manager.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {





  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))),
      backgroundColor: AppColors.white,
      width: 260.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _buildHeader(),
              verticalSpace(1.h),
              _buildMenuItems(
                img: "assets/images/my.png",
                title: 'My Earning',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(RoutesManager.myEarningView);
                },
              ),
              verticalSpace(10.h),
              _buildMenuItems(
                img: "assets/images/myorder.png",
                title: 'My Orders',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(RoutesManager.myOrderView);
                },
              ),
              verticalSpace(10.h),
              _buildMenuItems(
                img: "assets/images/review.png",
                title: 'My Reviews',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(RoutesManager.myReviewsView);
                },
              ),
              verticalSpace(10.h),
              _buildMenuItems(
                img: "assets/images/ordersummary.png",
                title: 'Order summary',
                onPressed: () {},
              ),
              verticalSpace(10.h),
              _buildMenuItems(
                img: "assets/images/orderstatus.png",
                title: 'Order Status',
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(RoutesManager.orderStatusView);
                },
              ),
              verticalSpace(10.h),
              _buildMenuItems(
                img: "assets/images/support.png",
                title: 'Support',
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context)
                      .pushNamed(RoutesManager.supportView);
                },
              ),

              verticalSpace(30.h),
              GestureDetector(child: Text("Terms & Condition",style: AppTextTheme.termsdrawer,),
              onTap: (){
                Navigator.of(context)
                    .pushNamed(RoutesManager.termsConditionsView);
              },),
              verticalSpace(20.h),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/logout.png"),
                  horizontalSpace(10.w),
                  Text("Log out",style: TextStyle(color: Colors.green,fontSize: 20),)
                ],),
              ),
            ],
          ),

          // verticalSpace(280.h),


        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFFF8F8F8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/person.png",
                width: 100.w,
                height: 120.h,
              ),

              horizontalSpace(40.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text("Name",style: AppTextTheme.drawername,),
                  Text("Id: SGHDV4563",style: AppTextTheme.titleMedium,),
                  verticalSpace(15.h),
                  Text("Phone Number",style: AppTextTheme.drawerphone,)
              ],)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomButton(title: "Update Profile", height: 40.h, width: 150.w,onTap: (){
              Navigator.of(context).pushNamed(RoutesManager.profileView);
            },),
          ),
          verticalSpace(10.h),

        ],
      ),
    );
  }
}



Widget _buildMenuItems({
  required String title,
  required String img,
  required Function onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, // Your desired background color
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 15),
        ]
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      dense: true,
      leading: Image.asset("$img"),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        title,
        style: AppTextTheme.labelLarge,
      ),

      onTap: () {
        onPressed();
      },
      // trailing: SvgPicture.asset(
      //   Assets.assetsIconsDownwardArrow,
      //   color: AppColors.lightGreen,
      // ),
    ),
  );
}
