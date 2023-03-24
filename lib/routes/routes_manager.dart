
import 'package:delivery_app/screens/custom_otp_screen.dart';
import 'package:delivery_app/screens/driving_partner_screen.dart';
import 'package:delivery_app/screens/home_screen.dart';
import 'package:delivery_app/screens/intro_slider_screen.dart';
import 'package:delivery_app/screens/login_screen.dart';
import 'package:delivery_app/screens/my_earning_screen.dart';
import 'package:delivery_app/screens/my_orders_screen.dart';
import 'package:delivery_app/screens/my_reviews_screen.dart';
import 'package:delivery_app/screens/order_status_screen.dart';
import 'package:delivery_app/screens/profile_screen.dart';
import 'package:delivery_app/screens/register_Vehicle_screen.dart';
import 'package:delivery_app/screens/signup_screen.dart';
import 'package:delivery_app/screens/signup_varification_screen.dart';
import 'package:delivery_app/screens/support_Screen.dart';
import 'package:delivery_app/screens/tell_us_screen.dart';
import 'package:delivery_app/screens/terms_conditions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesManager{
  static const splashView='';
  static const introSliderView = 'introSliderView';
  static const loginView = 'loginView';
  static const signupView = 'signupView';
  static const signupverificationView = 'signupverificationView';
  static const homeView = 'homeView';
  static const drivingPartnerView = 'drivingPartnerView';
  static const registerVehicleView = 'registerVehicleView';
  static const tellUsView = 'tellUsView';
  static const customOtpView = 'customOtpView';
  static const myReviewsView = 'myReviewsView';
  static const myEarningView = 'myEarningView';
  static const supportView = 'supportView';
  static const orderStatusView = 'orderStatusView';
  static const myOrderView = 'myOrderView';
  static const termsConditionsView = 'termsConditionsView';
  static const profileView = 'profileView';

  static Route<dynamic> generatedRoute(RouteSettings routeSettings){
    switch (routeSettings.name){

      case introSliderView:
        return _getPageroute(const IntroSliderScreen(), routeSettings);

      case loginView:
        return _getPageroute(const LoginScreen(), routeSettings);

      case signupView:
        return _getPageroute(const SignUpScreen(), routeSettings);

      case signupverificationView:
        return _getPageroute(const SignupVarificationScreen(), routeSettings);

      case homeView:
        return _getPageroute(const HomeScreen(), routeSettings);

      case drivingPartnerView:
        return _getPageroute(const DrivingPartnerScreen(), routeSettings);

      case registerVehicleView:
        return _getPageroute(const RegisterVehicleScreen(), routeSettings);

      case tellUsView:
        return _getPageroute(const TellUsScreen(), routeSettings);

      case myReviewsView:
        return _getPageroute(const MyReviewsScreen(), routeSettings);

      case myEarningView:
        return _getPageroute(const MyEarningScreen(), routeSettings);

      case supportView:
        return _getPageroute(const SupportScreen(), routeSettings);

      case orderStatusView:
        return _getPageroute(const OrderStatusScreen(), routeSettings);

      case myOrderView:
        return _getPageroute(const MyOrderScreen(), routeSettings);

      case profileView:
        return _getPageroute(const ProfileScreen(), routeSettings);

      case termsConditionsView:
        return _getPageroute(const TermsConditionsScreen(), routeSettings);

      case customOtpView:
        return _getPageroute( CustomOtpScreen(title: routeSettings.arguments as String), routeSettings);

        default:
        return _getPageroute(IntroSliderScreen(), routeSettings);
    }
  }
  static MaterialPageRoute _getPageroute(Widget widget, RouteSettings routeSettings){
    return MaterialPageRoute(builder: ((context)=> widget));
  }

}