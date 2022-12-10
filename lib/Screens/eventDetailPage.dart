import 'package:flutter/material.dart';
import 'package:kuandaa/helpers/event_preference.dart';
import 'package:kuandaa/palette.dart';

class EventDetailPage extends StatefulWidget {
  final EventProfile event;
  EventDetailPage({super.key, required this.event});

  final events = EventPreferences.myEvents;

  static final List<String> _menu = [
    'Description',
    'Schedule',
    'Images',
    'Tickets',
    'Map'
  ];

  @override
  _EventDetailPageState createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 0;
  bool pressed = false;
  int index = 0;

  late List<Widget> menuWidgets = [];
  @override
  void initState() {
    menuWidgets = <Widget>[
      buildDescription(widget.event),
      buildSchedule(),
      buildImages(),
      buildTickets(),
      buildMap(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${widget.event.name}'),
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            color: Palette.grey,
            child: Column(
              children: <Widget>[topContent(), bottomContent(context)],
            ),
          ),
        ),
      ),
    );
  }

  Widget topContent() {
    return (Container(
      padding: const EdgeInsets.only(left: 10.0),
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${widget.event.eventProfilImg}'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }

  Widget bottomContent(BuildContext context) => IntrinsicHeight(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(context, EventDetailPage._menu[0], 0),
                    buildDivider(),
                    buildButton(context, EventDetailPage._menu[1], 1),
                    buildDivider(),
                    buildButton(context, EventDetailPage._menu[2], 2),
                    buildDivider(),
                    buildButton(context, EventDetailPage._menu[3], 3),
                    buildDivider(),
                    buildButton(context, EventDetailPage._menu[4], 4),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              menuWidgets[_currentSelected],
            ],
          ),
        ),
      );

  Widget buildButton(BuildContext context, String value, int index) =>
      (MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: _currentSelected == index ? Colors.blueGrey : Colors.white,
        onPressed: () {
          setState(() {
            _currentSelected = index;
            if (index == 0) {}
            if (index == 1) {}
            if (index == 2) {}
            if (index == 3) {}
            if (index == 4) {}
          });
        },
        child: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ));

  Widget buildDivider() => const SizedBox(height: 24, child: VerticalDivider());

  Widget buildDescription(EventProfile event) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${event.description}',
              softWrap: true,
              maxLines: 30,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ));
  }

  Widget buildSchedule() {
    return Container();
  }

  Widget buildImages() {
    return Container();
  }

  Widget buildTickets() {
    return Container();
  }

  Widget buildMap() {
    return Container();
  }
}
