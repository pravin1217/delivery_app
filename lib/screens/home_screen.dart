import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/config/app_text_theme.dart';
import 'package:delivery_app/config/spacing.dart';
import 'package:delivery_app/routes/routes_manager.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:delivery_app/widgets/custom_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_button_with_icon.dart';
import '../widgets/custom_list_tile.dart';
import '../widgets/drawer_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: DrawerWidget()),
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          "My Bookings",
          style: AppTextTheme.displayMedium,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Image.asset(
                "assets/images/Group.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20.h),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                  color: AppColors.aquaMarine,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1), blurRadius: 15),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/dashbord.png"),
                      horizontalSpace(20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Russel Taylor",
                            style: AppTextTheme.dashname,
                          ),
                          verticalSpace(5.h),
                          Text(
                            "Lorem Ipsum Delivery",
                            style: AppTextTheme.dashdesc,
                          ),
                          verticalSpace(5.h),
                          Row(
                            children: [
                              Image.asset("assets/images/call.png"),
                              horizontalSpace(5.w),
                              Text(
                                "9564818265",
                                style: AppTextTheme.dashphone,
                              ),
                            ],
                          ),
                          verticalSpace(5.h),
                          Row(
                            children: [
                              Image.asset("assets/images/location.png"),
                              horizontalSpace(5.w),
                              Text(
                                "Gurugram sector:12",
                                style: AppTextTheme.dashphone,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButtonWithIcon(
                        title: "Chat",
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(RoutesManager.tellUsView);
                        },
                        height: 50.h,
                        width: 150.w,
                        img: 'assets/images/chatblack.png',
                      ),
                      horizontalSpace(10.w),
                      CustomButtonWithIcon(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return CustomPopus(
                                title: 'Accept ',
                                content: 'Dialog content',
                                actions: [
                                  CustomButton(
                                    onTap: (){
          Navigator.of(context).pushNamed(RoutesManager.customOtpView,arguments: "End Order");
                                    },
                                      title: "Accept",
                                      height: 30.h,
                                      width: 200.w),
                                  CustomButton(
                                    onTap: (){
                                      Navigator.of(context).pushNamed(RoutesManager.customOtpView,arguments: "Start Order");
                                    },
                                      title: "Reject",
                                      height: 30.h,
                                      width: 200.w),
                                ],
                              );
                            },
                          );
                        },
                        title: "Call",
                        height: 50.h,
                        width: 150.w,
                        img: 'assets/images/callblack.png',
                      )
                    ],
                  )
                ],
              ),
            ),
            verticalSpace(20.h),
            Text("Delivery Schedule", style: AppTextTheme.labelLarge),
            verticalSpace(10.h),
            Flexible(
              flex: 1,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, int) {
                  return Column(
                    children: [CustomListTile(), verticalSpace(10.h)],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
