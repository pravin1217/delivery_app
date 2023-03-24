import 'package:delivery_app/config/app_colors.dart';
import 'package:delivery_app/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key? key}) : super(key: key);

  @override
  State<IntroSliderScreen> createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listContentConfig.add(
      const ContentConfig(
        // title: "ERASER",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        pathImage: "assets/images/slide1.png",
        backgroundColor: AppColors.white,
        heightImage: 370,
        widthImage: 393,

        styleDescription: TextStyle(color: AppColors.black,fontWeight: FontWeight.w400,
        fontSize: 16,height: 1.5,),

      ),
    );
    listContentConfig.add(
      const ContentConfig(
        // title: "PENCIL",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        pathImage: "assets/images/slide2.png",
        backgroundColor: AppColors.white,
        heightImage: 370,
        widthImage: 393,

        styleDescription: TextStyle(color: AppColors.black,fontWeight: FontWeight.w400,
          fontSize: 16,height: 1.5),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        // title: "RULER",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        pathImage: "assets/images/slide3.png",
        heightImage: 370,
        widthImage: 393,

        styleDescription: TextStyle(color: AppColors.black,fontWeight: FontWeight.w400,
          fontSize: 16,height: 1.5),
        backgroundColor: AppColors.white,
      ),
    );
  }

  void onDonePress() {
   Navigator.of(context).pushNamed(RoutesManager.loginView);
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      indicatorConfig: IndicatorConfig(
          indicatorWidget: Container(
            height: 7.h,
            width: 10.w,
            decoration: BoxDecoration(
                color: AppColors.lightBlack,
                borderRadius: BorderRadius.circular(10)),
          ),
          activeIndicatorWidget: Container(
            height: 7.h,
            width: 10.w,
            decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(10)),
          ),
        sizeIndicator: 10.w
      ),
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
      isAutoScroll: true,
      isShowSkipBtn: false,
      isShowPrevBtn: false,
      isShowNextBtn: false,
      doneButtonStyle: ButtonStyle(textStyle: MaterialStateTextStyle.resolveWith((states) => TextStyle(color: AppColors.aquaMarine)) ),
    );
  }
}
