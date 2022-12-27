// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/event_summary_model.dart';
import 'package:kuandaa/Screens/event/editEvent.dart';
import 'package:kuandaa/Screens/ibox/favorite.dart';
import 'package:kuandaa/Screens/ibox/ibox.dart';
import 'package:kuandaa/Screens/ibox/services.dart';
import 'package:kuandaa/helpers/editEventPreference.dart';

import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatar.dart';

// ignore: must_be_immutable
class EventToolkitPage extends StatefulWidget {
  static final List _menu = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        avatar(
          size: 100,
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
    'Dashboard',
    'My Events',
    'Services Offered',
    'Event Toolkit',
  ];

  const EventToolkitPage({super.key});
  @override
  EventToolkitPageState createState() => EventToolkitPageState();
}

class EventToolkitPageState extends State<EventToolkitPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 4;
  final summary = EventSummaryPreference.mySummary;
  List<ServiceSummary> services = [];

  @override
  void initState() {
    super.initState();
  }

  List<ServiceSummary> getServices = [
    ServiceSummary(
        name: 'Margo Club',
        category: 'venue',
        status: 'unpublished',
        action: 'view details'),
    ServiceSummary(
        name: 'La Falaise',
        category: 'venue',
        status: 'unpublished',
        action: 'view details'),
    ServiceSummary(
        name: 'Mawa Hotel',
        category: 'venue',
        status: 'unpublished',
        action: 'view details'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Palette.grey,
        drawer: Drawer(
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              itemCount: EventToolkitPage._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: index == 0
                        ? EventToolkitPage._menu[index]
                        : Text(
                            '${EventToolkitPage._menu[index]}',
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
                                builder: (context) => const iBoxPage(),
                                maintainState: false),
                          );
                        }
                        if (index == 2) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => const FavoritesPage(),
                                maintainState: false),
                          );
                        }
                        if (index == 3) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => const ServicesPage(),
                                maintainState: false),
                          );
                        }
                        if (index == 4) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => EventToolkitPage(),
                                maintainState: false),
                          );
                        }
                      });
                    },
                  ),
                );
              }),
        ),
        appBar: AppBar(
          title: const Text("Event Toolkit"),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0))),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              color: Palette.grey,
              child: Column(
                children: [
                  ...(summary
                      .map((item) => buildEventToolkit(context, item))
                      .toList()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEventToolkit(BuildContext context, EventSummary event) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              avatar(
                  imageUrl: '${event.image}', onClicked: () async {}, size: 70),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${event.name}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Palette.bleu),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${event.category}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${event.status}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: false)
                      .push(MaterialPageRoute(
                          builder: (context) => EditEventPage(
                                event: event,
                              ),
                          maintainState: false));
                },
                icon: Icon(
                  Icons.edit,
                  color: Palette.pink,
                  size: 26,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
