// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/event/eventToolkit.dart';
import 'package:kuandaa/Screens/ibox/services.dart';
import 'package:kuandaa/helpers/editEventPreference.dart';

import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatar.dart';
import 'package:kuandaa/widgets/textFieldWidget.dart';

class ProjectTeamPage extends StatefulWidget {
  final EventSummary event;
  const ProjectTeamPage({super.key, required this.event});
  static final List _menu = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ],
    ),
    'Event toolkit',
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
  ProjectTeamPageState createState() => ProjectTeamPageState();
}

class ProjectTeamPageState extends State<ProjectTeamPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 1;

  final summary = EventSummaryPreference.mySummary;

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
              itemCount: ProjectTeamPage._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: index == 0 || index == 1
                        ? ProjectTeamPage._menu[index]
                        : Text(
                            '${ProjectTeamPage._menu[index]}',
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
                                builder: (context) => const EventToolkitPage(),
                                maintainState: false),
                          );
                        }
                        if (index == 2) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProjectTeamPage(event: widget.event),
                                maintainState: false),
                          );
                        }
                        if (index == 3) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProjectTeamPage(event: widget.event),
                                maintainState: false),
                          );
                        }
                        if (index == 4) {
                          Navigator.of(context, rootNavigator: false).push(
                            MaterialPageRoute(
                                builder: (context) => const ServicesPage(),
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
          title: const Text("Edit Event"),
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
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  color: Palette.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0.0, 0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 15.0, 30, 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('${widget.event.image}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                bottomContent(context, widget.event),
                                const SizedBox(
                                  height: 24.0,
                                ),
                              ],
                            ),
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
    );
  }

  bottomContent(BuildContext context, EventSummary event) {
    return Column(
      children: [basicInfo(context, event)],
    );
  }

  basicInfo(BuildContext context, EventSummary event) {
    return Column(children: [
      const SizedBox(
        height: 25.0,
      ),
      Text(
        'Basic Info',
        style: TextStyle(
            color: Palette.pink[800],
            letterSpacing: 2.0,
            fontSize: 22,
            fontWeight: FontWeight.w500),
      ),
      const Divider(
        thickness: 1.0,
        color: Colors.black,
        height: 10,
      ),
      const SizedBox(
        height: 15.0,
      ),
      TextFieldWidget(
          label: 'Name', text: '${event.name}', onChanged: (name) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'Category',
          text: '${event.category}',
          onChanged: (category) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'Start date',
          text: '${event.beginDate}',
          onChanged: (beginDate) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'End date', text: '${event.endDate}', onChanged: (endDate) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'City', text: '${event.city}', onChanged: (city) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'Status', text: '${event.status}', onChanged: (status) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'Created By',
          text: '${event.eventCreator}',
          onChanged: (eventCreator) {}),
      const SizedBox(
        height: 24.0,
      ),
      TextFieldWidget(
          label: 'Email', text: '${event.email}', onChanged: (email) {}),
      const SizedBox(
        height: 24.0,
      ),
    ]);
  }
}
