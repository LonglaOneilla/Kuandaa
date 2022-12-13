import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/ibox/favorite.dart';
import 'package:kuandaa/Screens/ibox/ibox.dart';
import 'package:kuandaa/Screens/ibox/services.dart';
import 'package:kuandaa/helpers/event_preference.dart';

import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatar.dart';

class EditEventPage extends StatefulWidget {
  EventProfile? event;
  EditEventPage({super.key, this.event});
  static final List _menu = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        avatar(
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
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Event toolkit',
            style: TextStyle(
                color: Palette.pink[800],
                letterSpacing: 2.0,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
    'Basic Info',
    'Project Team',
    'Line Up',
    'Budget & Checklist ',
    'Retro Planning',
    'Event Flow ',
    'Purchase',
    'Report ',
    '2D - Plan',
    'Gift',
    'Invitation',
    'Ticketing',
    'Team & game',
    'Feedbacks',
  ];
  @override
  EditEventPageState createState() => EditEventPageState();
}

class EditEventPageState extends State<EditEventPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Palette.grey,
        drawer: Drawer(
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              itemCount: EditEventPage._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: index == 0
                        ? EditEventPage._menu[index]
                        : Text(
                            '${EditEventPage._menu[index]}',
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
                                builder: (context) => EditEventPage(),
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
          title: const Text("Personal Info"),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0))),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                _globalKey.currentState?.openDrawer();
              },
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              color: Palette.grey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('${widget.event!.eventProfilImg}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
