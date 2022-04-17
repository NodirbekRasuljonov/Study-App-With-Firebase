import 'package:flutter/material.dart';
import 'package:studyapp/screens/home/home_screen.dart';
import 'package:studyapp/screens/onboarding/interests.dart';
import 'package:studyapp/screens/onboarding/onboarding1.dart';
import 'package:studyapp/screens/onboarding/onboarding2.dart';
import 'package:studyapp/screens/onboarding/signin_page.dart';
import 'package:studyapp/screens/onboarding/signup_page.dart';

class MyRoutes {
  Route? myRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/onboarding':
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );
      case '/interest':
        return MaterialPageRoute(
          builder: (context) => InterestsPage(),
        );
      case '/signin':
        return MaterialPageRoute(
          builder: (context) => const SignInPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
