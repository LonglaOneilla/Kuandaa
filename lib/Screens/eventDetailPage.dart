import 'package:flutter/material.dart';
import 'package:kuandaa/helpers/event_preference.dart';
import 'package:kuandaa/palette.dart';

class EventDetailPage extends StatelessWidget {
  final EventProfile event;
  EventDetailPage({super.key, required this.event});

  final events = EventPreferences.myEvents;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${event.name}'),
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
              children: <Widget>[topContent(), bottomContent()],
            ),
          ),
        ),
      ),
    );
  }

  Widget topContent() {
    return (Container(
      padding: EdgeInsets.only(left: 10.0),
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${event.eventProfilImg}'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }

  Widget bottomContent() {
    return (Container(
      padding: EdgeInsets.only(left: 10.0),
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${event.eventProfilImg}'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
