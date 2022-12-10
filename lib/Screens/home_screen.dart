import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/eventScreen.dart';

import 'package:kuandaa/palette.dart';
import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/widgets/avatarWidget.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static final List<Widget> _menu = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        avatarWidget(
          imageUrl: 'assets/images/Locko.jpg',
          onClicked: () async {},
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Adelaide',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),
          ),
        ),
        const Divider(
          height: 30.0,
          thickness: 1,
          color: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
    Text('Provider Guide'),
    Text('Event Guide'),
    Text('About us'),
    Text('Contact us'),
    Text('Our Apps')
  ];

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 1;
  final userName = 'Adelaide';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Palette.grey,
        drawer: Drawer(
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              itemCount: homeScreen._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: homeScreen._menu[index],
                    dense: true,
                    onTap: () {
                      setState(() {
                        _currentSelected = index;
                        if (index == 1) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => homeScreen(),
                                maintainState: false),
                          );
                        }
                        if (index == 2) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => eventScreen(),
                                maintainState: false),
                          );
                        }
                      });
                    },
                  ),
                );
              }),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          _globalKey.currentState?.openDrawer();
                        },
                        //semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Image.asset(
                            'assets/images/Ellipse.png',
                            height: 80,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Text(
                                      userName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },

                                      //semanticLabel: 'Text to announce in accessibility modes',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Find the Trending Providers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              hintText: "Search",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Popular Providers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 500,
                  height: 450,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/daphne.jpg',
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Daphne Njie',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Colors.pink,
                                              size: 30,
                                            ),
                                            onPressed: () {
                                              //Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Artist',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/yupevent.jpg',
                                  height: 200,
                                  width: 400,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'YUP Agency',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Agency',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/Locko.jpg',
                                  height: 200,
                                  width: 400,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Locko',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Artist',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Drawer();
}
