import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/user_profile/profile.dart';
import 'package:kuandaa/Screens/user_profile/securityProfile.dart';

class TabNavigatorRoutes {
  static const String securityPage = '/security';
  static const String userProfile = '/Profile';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? tabItem;
  const TabNavigator({Key? key, this.navigatorKey, this.tabItem}): super(key:key);
  
  


Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
    {int materialIndex: 500}) {
  return {
    TabNavigatorRoutes.securityPage: (context) => securityProfilePage(),
    TabNavigatorRoutes.userProfile: (context) => ProfilePage(),
  };
}

@override
Widget build(BuildContext context) {
  Widget ? child;
  
  if (tabItem == 'Page1')
  child=securityProfilePage();
  if (tabItem == 'page2')
  child=securityProfilePage();
  if (tabItem == 'page3')
  child=securityProfilePage();

return Container(
  child: child,
);

  /*final routeBuilders = _routeBuilders(context);
  return Navigator(
    initialRoute: TabNavigatorRoutes.userProfile,
    onGenerateRoute: (routeSettings) {
      return MaterialPageRoute(
        builder: (context) => routeBuilders[routeSettings.name]!(context),
      );
    },
  );*/
}
}