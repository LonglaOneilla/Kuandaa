import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/event_summary_model.dart';
import 'package:kuandaa/Screens/event/eventToolkit.dart';
import 'package:kuandaa/Screens/ibox/ibox.dart';
import 'package:kuandaa/Screens/ibox/services.dart';
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatar.dart';
//import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// ignore: camel_case_types
class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

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

  @override
  FavoritesPageState createState() => FavoritesPageState();
}

// ignore: camel_case_types
class FavoritesPageState extends State<FavoritesPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final userName = 'Adelaide';
  int _currentSelected = 2;
  List<ServiceSummary> services = [];
  List<EventsSummary> eventList = [];

  @override
  void initState() {
    super.initState();
  }

  List<EventsSummary> getEvents() {
    return [
      EventsSummary(
          name: 'Fair Conference',
          category: 'Conference',
          status: 'active',
          action: 'view details',
          image: 'assets/images/yupevent.jpg'),
      EventsSummary(
          name: 'CA after party',
          category: 'Party',
          status: 'active',
          action: 'view details',
          image: 'assets/images/party.jpg'),
      EventsSummary(
          name: 'Megrave Party',
          category: 'Party',
          status: 'completed',
          action: 'view details',
          image: 'assets/images/time.jpg'),
    ];
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
              itemCount: FavoritesPage._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: index == 0
                        ? FavoritesPage._menu[index]
                        : Text(
                            '${FavoritesPage._menu[index]}',
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
                                builder: (context) => const EventToolkitPage(),
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
          title: const Text("My Events"),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'All events',
                                    style: TextStyle(
                                      color: Palette.pink,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 20.0,
                            thickness: 1,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                              child: Container(
                                color: Palette.grey,
                                child: Column(
                                  children: [
                                    ...(getEvents()
                                        .map((item) =>
                                            buildEventToolkit(context, item))
                                        .toList()),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget buildEventToolkit(BuildContext context, EventsSummary card) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              avatar(
                  imageUrl: '${card.image}', onClicked: () async {}, size: 70),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${card.name}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Palette.bleu),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${card.category}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${card.status}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye,
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
  //_createDataTable() {}

}
