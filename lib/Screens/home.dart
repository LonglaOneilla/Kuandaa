import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/providers.dart';
import 'package:kuandaa/Screens/event/eventDetailPage.dart';
import 'package:kuandaa/Screens/event/eventScreen.dart';
import 'package:kuandaa/Screens/homePage.dart';
import 'package:kuandaa/Screens/home_screen.dart';
import 'package:kuandaa/Screens/providerDetail.dart';
import 'package:kuandaa/helpers/event_preference.dart';
import 'package:kuandaa/helpers/provider_preferences.dart';
import 'package:kuandaa/palette.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  static final List _menu = [
    'Home',
    'Provider Guide',
    'Event Guide',
    'About us',
    'Contact us',
    'Our Apps'
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 0;
  final userName = 'Adelaide';
  final eventDetails = EventPreferences.myEvents;
  final providers = providerPreference.provider;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Palette.grey,
        drawer: Drawer(
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              itemCount: Home._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: Text(
                      '${Home._menu[index]}',
                      style: TextStyle(
                        color: _currentSelected == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
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
                left: 8.0, top: 0.0, right: 0.0, bottom: 30.0),
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
                        size: 24,
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
                        'Popular events',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 24,
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 500,
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ...(eventDetails
                            .map((item) => _buildCard(context, item))
                            .toList()),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: const Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
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
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                //Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ...(providers
                            .map((item) => _buildProviderCard(context, item))
                            .toList()),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(context, EventProfile event) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    '${event.eventProfilImg}',
                    height: 250,
                    width: 383,
                    fit: BoxFit.fill,
                  ),
                ),
              ]),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${event.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.pink,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EventDetailPage(event: event)));
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.black,
                        size: 26,
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                    Text(
                      '${event.beginDate}',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
                    Text(
                      '${event.lieu}',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.person_pin,
                        color: Colors.black,
                        size: 26,
                      ),
                      onPressed: () {
                        null;
                      },
                    ),
                    Text(
                      'By ${event.eventCreator}',
                      style: const TextStyle(
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
    );
  }

  Widget _buildProviderCard(context, EventProvider event) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: Image.asset(
                  '${event.imageUrl}',
                  height: 250,
                  width: 383,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 8.0, right: 14.0, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${event.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.pink,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProviderDetailPage(provider: event)));
                      },
                    ),
                  ],
                ),
                Text(
                  '${event.type}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
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
                    Text(
                      '${event.location}',
                      // ignore: prefer_const_constructors
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
    );
  }
}
