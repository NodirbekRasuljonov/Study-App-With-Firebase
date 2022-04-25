import 'package:flutter/material.dart';
import 'package:studyapp/screens/home/home_screen.dart';
import 'package:studyapp/screens/home/subjects_page.dart';
import 'package:studyapp/screens/onboarding/interests.dart';
import 'package:studyapp/screens/onboarding/onboarding1.dart';
import 'package:studyapp/screens/onboarding/onboarding2.dart';
import 'package:studyapp/screens/onboarding/signin_page.dart';
import 'package:studyapp/screens/onboarding/signup_page.dart';
import 'package:studyapp/screens/settings_pages/about_us/about_page.dart';
import 'package:studyapp/screens/settings_pages/about_us/about_us_page.dart';
import 'package:studyapp/screens/settings_pages/about_us/data_protections.dart';
import 'package:studyapp/screens/settings_pages/about_us/help_page.dart';
import 'package:studyapp/screens/settings_pages/about_us/terms_conditions_page.dart';
import 'package:studyapp/screens/settings_pages/account_page.dart';
import 'package:studyapp/screens/settings_pages/settins_page2/app_lang.dart';
import 'package:studyapp/screens/settings_pages/main_settings_page.dart';
import 'package:studyapp/screens/settings_pages/settins_page2/notifications.dart';
import 'package:studyapp/screens/settings_pages/profile_page.dart';
import 'package:studyapp/screens/settings_pages/settins_page2/settings_page.dart';
import 'package:studyapp/screens/settings_pages/settins_page2/update_version.dart';

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
      case '/subjects':
        return MaterialPageRoute(
          builder: (context) => const SubjectsPage(),
        );
      case '/mainsettings':
        return MaterialPageRoute(
          builder: (context) => MainSettingsPage(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
      case '/account':
        return MaterialPageRoute(
          builder: (context) => const AccountPage(),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (context) => const AboutPage(),
        );
      case '/applang':
        return MaterialPageRoute(
          builder: (context) => const AppLangPage(),
        );
      case '/notifications':
        return MaterialPageRoute(
          builder: (context) => const NotificationsPage(),
        );
      case '/updateversion':
        return MaterialPageRoute(
          builder: (context) => const UpdateversionPage(),
        );
      case '/aboutus':
        return MaterialPageRoute(
          builder: (context) => const AboutUsPage(),
        );
      case '/help':
        return MaterialPageRoute(
          builder: (context) => const HelpPage(),
        );
      case '/terms':
        return MaterialPageRoute(
          builder: (context) => const TermsConditionsPage(),
        );
      case '/dataprotection':
        return MaterialPageRoute(
          builder: (context) => const DataProtectionPage(),
        );
    }
  }
}
