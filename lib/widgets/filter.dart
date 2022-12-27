import 'package:flutter/material.dart';
import 'package:kuandaa/palette.dart';

final List<String> _providerMenu = [
  'All',
  'Artists',
  'Catering',
  'Logistics',
  'Venue/Location',
  'Agencies'
];
final List<String> _eventMenu = [
  'All',
  'Private',
  'Social & Education',
  'Sport',
  'Media',
  'Festivals/Shows',
  'Corporate',
];

int _currentSelected = 0;
bool pressed = false;
int index = 0;

late List<Widget> menuWidgets = [];
@override
void initState() {
  /*menuWidgets = <Widget>[
      buildDescription(widget.event),
      buildSchedule(),
      buildImages(),
      buildTickets(),
      buildMap(),
    ];*/
  //super.initState();
}

Widget buildFilter(BuildContext context, String type) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        color: Palette.grey,
        child: Column(
          children: <Widget>[bottomContent(context, type)],
        ),
      ),
    ),
  );
}

Widget bottomContent(BuildContext context, String item) => IntrinsicHeight(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: item == 'provider'
                    ? providerBtn(context)
                    : item == 'event'
                        ? eventBtn(context)
                        : null),
            const SizedBox(
              height: 25,
            ),
            //menuWidgets[_currentSelected],
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
        style: TextStyle(
            color: _currentSelected == index ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ),
    ));

void setState(Null Function() param0) {}

Widget providerBtn(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButton(context, _providerMenu[0], 0),
      buildDivider(),
      buildButton(context, _providerMenu[1], 1),
      buildDivider(),
      buildButton(context, _providerMenu[2], 2),
      buildDivider(),
      buildButton(context, _providerMenu[3], 3),
      buildDivider(),
      buildButton(context, _providerMenu[4], 4),
      buildDivider(),
      buildButton(context, _providerMenu[5], 5),
    ],
  );
}

Widget eventBtn(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButton(context, _eventMenu[0], 0),
      buildDivider(),
      buildButton(context, _eventMenu[1], 1),
      buildDivider(),
      buildButton(context, _eventMenu[2], 2),
      buildDivider(),
      buildButton(context, _eventMenu[3], 3),
      buildDivider(),
      buildButton(context, _eventMenu[4], 4),
      buildDivider(),
      buildButton(context, _eventMenu[5], 5),
      buildDivider(),
      buildButton(context, _eventMenu[6], 6),
    ],
  );
}

Widget buildDivider() => const SizedBox(height: 24, child: VerticalDivider());
