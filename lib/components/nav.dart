// ignore_for_file: camel_case_types, unused_field, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/home.dart';
import 'package:kuandaa/Screens/ibox/favorite.dart';
import 'package:kuandaa/Screens/ibox/ibox.dart';
import 'package:kuandaa/Screens/user_profile/profile.dart';
import 'package:kuandaa/palette.dart';

class navBar extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  navBar({Key? key}) : super(key: key);

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  /*int _selectedIndex = 0;
  void _onPageChanged(int index) {
    _selectedIndex = index;
  }

  void _onItemTapped(int selectedIndex) async {
    switch (selectedIndex) {
      case 0:
        setState(() {
          //print (selectedIndex);
          _pageController.jumpToPage(0);
        });
        break;

      case 1:
        setState(() {
          //print (selectedIndex);
          _pageController.jumpToPage(1);
        });
        break;

      case 2:
        setState(() {
          //print (selectedIndex);
          _pageController.jumpToPage(2);
        });
        break;

      case 3:
        setState(() {
          //print (selectedIndex);
          _pageController.jumpToPage(3);
        });
        /*setState(() => const Text('Profile'));
        await showModalBottomSheet(
            backgroundColor: Colors.black.withOpacity(0),
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo.png',
                        height: 60,
                        width: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, route.signIn),
                              style: ElevatedButton.styleFrom(
                                  //foregroundColor:Palette.pink,
                                  backgroundColor: Colors.white),
                              child: const Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              /*color: Colors.white,
                              textColor: Palette.pink,
                              padding: EdgeInsets.all(5),
                              elevation: 10,*/
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, route.signUp);
                              },
                              style: ElevatedButton.styleFrom(
                                //foregroundColor:Palette.pink,
                                backgroundColor: Palette.darkgrey,
                              ),
                              child: const Text(
                                'Sign Up',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              /*color: Palette.darkgrey,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(5),
                              elevation: 10,*/
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });*/
        break;
      default:
        setState(() {
          //print (selectedIndex);
          _pageController.jumpToPage(0);
        });
    }
  }
*/
  //final ScrollController _homeController = ScrollController();

  final PageController _pageController = PageController();
  final List<Widget> _screens = [
    Home(),
    const iBoxPage(),
    const FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.pink,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home, color: Colors.black),
              label: 'Home',
              backgroundColor: Palette.pink),
          BottomNavigationBarItem(
              icon: const Icon(Icons.folder_open, color: Colors.black),
              label: 'iBox',
              backgroundColor: Palette.pink),
          BottomNavigationBarItem(
              icon: const Icon(Icons.favorite, color: Colors.black),
              label: 'My Events',
              backgroundColor: Palette.pink),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person, color: Colors.black),
              label: 'Profile',
              backgroundColor: Palette.pink),
        ],
      ),*/
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Palette.pink,
          activeColor: Colors.white,
          inactiveColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home, color: Colors.black),
                label: 'Home',
                backgroundColor: Palette.pink),
            BottomNavigationBarItem(
                icon: const Icon(Icons.folder_open, color: Colors.black),
                label: 'iBox',
                backgroundColor: Palette.pink),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite, color: Colors.black),
                label: 'My Events',
                backgroundColor: Palette.pink),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person, color: Colors.black),
                label: 'Profile',
                backgroundColor: Palette.pink),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return _screens[index];
            },
          );
        },
      ),
    );
  }
}
