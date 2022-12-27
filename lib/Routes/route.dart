import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/home_screen.dart';
import 'package:kuandaa/Screens/pages/login.dart';
import 'package:kuandaa/Screens/pages/on_boarding.dart';
import 'package:kuandaa/Screens/user_profile/profile.dart';
import 'package:kuandaa/Screens/user_profile/securityProfile.dart';
import 'package:kuandaa/components/nav.dart';


const String onBoarding = 'landing page';
const String Home = 'home page';
const String step2 = 'step 2';
const String welcome = 'welcome page';
const String nav = 'nav bar';
const String signUp = 'create account';
const String signIn = 'log into account';
const String personalProfile = "Personal profile";
const String securityProfile = "security profile";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case onBoarding:
      return MaterialPageRoute(builder: (context) => IntroductionScreens());
    case Home:
      return MaterialPageRoute(builder: (context) => homeScreen());
    case nav:
      return MaterialPageRoute(builder: (context) => navBar());
    case signUp:
      return MaterialPageRoute(builder: (context) => navBar());
    case signIn:
      return MaterialPageRoute(builder: (context) => Login());
    case personalProfile:
      return MaterialPageRoute(builder: (context) => ProfilePage());
    case securityProfile:
      return MaterialPageRoute(builder: (context) => securityProfilePage());
    default:
      throw ('This route name does not exist');
  }
}
