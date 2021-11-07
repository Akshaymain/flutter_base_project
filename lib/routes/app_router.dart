import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_base_project/routes/constants/route_names.dart';
import 'package:flutter_base_project/screens/Error/error_page.dart';
import 'package:flutter_base_project/screens/home/home_screen.dart';
import 'package:flutter_base_project/screens/intro/intro_screen.dart';
import 'package:flutter_base_project/screens/sign_in/signin_phone_number_screen.dart';
import 'package:flutter_base_project/screens/sign_in/signin_verify_otp_screen.dart';
import 'package:flutter_base_project/screens/sign_up/signup_phone_number_screen.dart';
import 'package:flutter_base_project/screens/sign_up/signup_verify_otp_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    PageTransitionType _pageTransitionType = PageTransitionType.rightToLeft;

    switch (settings.name) {
      case INITIAL_ROUTE:

      case INTRO_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const IntroScreen(),
            settings: settings);
      case SIGN_UP_PHONE_NUMBER_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const SignUpPhoneNumberScreen(),
            settings: settings);
      case SIGN_UP_VERIFY_OTP_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const SignUpVerifyOTPScreen(),
            settings: settings);
      case SIGN_IN_PHONE_NUMBER_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const SignInPhoneNumberScreen(),
            settings: settings);
      case SIGN_IN_VERIFY_OTP_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const SignInVerifyOTPScreen(),
            settings: settings);
      case HOME_ROUTE:
        return PageTransition(
            type: _pageTransitionType,
            child: const HomeScreen(),
            settings: settings);
      default:
        return PageTransition(
            type: _pageTransitionType,
            child: const ErrorPage(),
            settings: settings);
    }
  }
}
