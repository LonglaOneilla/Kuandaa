// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/providers.dart';
import 'package:kuandaa/helpers/provider_preferences.dart';
import 'package:kuandaa/palette.dart';

class ProviderDetailPage extends StatefulWidget {
  final EventProvider provider;
  ProviderDetailPage({super.key, required this.provider});

  final providers = providerPreference.provider;

  static final List<String> _menu = [
    'About',
    'Details',
  ];
  @override
  State<ProviderDetailPage> createState() => _ProviderDetailPageState();
}

class _ProviderDetailPageState extends State<ProviderDetailPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 0;
  bool pressed = false;
  int index = 0;

  late List<Widget> menuWidgets = [];
  @override
  void initState() {
    menuWidgets = <Widget>[
      buildDescription(widget.provider),
      buildSchedule(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${widget.provider.name}'),
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
          image: AssetImage('${widget.provider.imageUrl}'),
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
                    buildButton(context, ProviderDetailPage._menu[0], 0),
                    buildDivider(),
                    buildButton(context, ProviderDetailPage._menu[1], 1),
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

  Widget buildDivider() => const SizedBox(height: 24, child: VerticalDivider());

  Widget buildDescription(EventProvider event) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${event.about}',
                  softWrap: true,
                  maxLines: 30,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildSchedule() {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
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
                    Text('${widget.provider.location}')
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
                          child: Text('Address'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.provider.address}')
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
                    Text('${widget.provider.category}')
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
                          child: Text('Phone1'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${widget.provider.phone1}')
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
                    Text('${widget.provider.phone2}')
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

  Widget buildImages() {
    return Container();
  }

  Widget buildTickets() {
    return Container();
  }
}
