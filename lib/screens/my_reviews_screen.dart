import 'package:delivery_app/widgets/appBar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../config/app_colors.dart';
import '../config/app_text_theme.dart';
import '../config/spacing.dart';

class MyReviewsScreen extends StatefulWidget {
  const MyReviewsScreen({Key? key}) : super(key: key);

  @override
  State<MyReviewsScreen> createState() => _MyReviewsScreenState();
}

class _MyReviewsScreenState extends State<MyReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(title: "My Reviews",centertitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),
                horizontalSpace(10.w),
                Text("Today",style: AppTextTheme.labeltextFromField,),
                horizontalSpace(10.w),
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),

              ],
            ),
            verticalSpace(20.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                 Text("Cannulation",style: AppTextTheme.titleLarge,),
                 Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(10.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                 Text("Cannulation",style: AppTextTheme.titleLarge,),
                 Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(10.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                 Text("Cannulation",style: AppTextTheme.titleLarge,),
                 Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),
                horizontalSpace(10.w),
                Text("Yesterday",style: AppTextTheme.labeltextFromField,),
                horizontalSpace(10.w),
                Container(height: 1.h,width: 150.w,color: AppColors.lightBlack,),

              ],
            ),

            verticalSpace(20.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                  Text("Cannulation",style: AppTextTheme.titleLarge,),
                  Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(10.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                  Text("Cannulation",style: AppTextTheme.titleLarge,),
                  Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(10.h),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.lightBlack,
                ),
              ),
              // leading: Image.asset("assets/images/listtileperson.png"),
              title: Row(
                children: [
                  Image.asset("assets/images/listtileperson.png"),
                  horizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russel Taylor',
                        style: AppTextTheme.displayMedium,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {});
                          },
                          starCount: 5,
                          rating: 5,
                          size: 20.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing:0.0
                      ),
                    ],
                  ),

                ],
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(15.h),
                  Text(
                    "Quick Service.",
                    style: AppTextTheme.headlineSmall,
                  ),
                  verticalSpace(10.h),
                ],
              ),
              trailing: Column(
                children: [
                  Text("Cannulation",style: AppTextTheme.titleLarge,),
                  Text("15 March 2023",style: AppTextTheme.titleSmall,),
                ],
              ),
            ),
            verticalSpace(20.h),
          ],
        ),
      ),
    );
  }
}
