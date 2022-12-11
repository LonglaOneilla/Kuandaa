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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              color: Palette.grey,
              child: Column(
                children: <Widget>[topContent(), bottomContent(context)],
              ),
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
        padding: const EdgeInsets.all(8),
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${event.description}',
              softWrap: true,
              maxLines: 30,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Event detail',
                  style: TextStyle(
                      color: Palette.pink[800],
                      letterSpacing: 2.0,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.black,
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Start date'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.beginDate}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('End date'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.endDate}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Location'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.city}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Venue'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.lieu}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.category,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Category'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.category}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Phone 1'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.phone1}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Phone 2'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.phone2}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Palette.pink,
                          size: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Email'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.event.email}')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        color: Palette.pink,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Palette.pink,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
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
