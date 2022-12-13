import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/event_summary_model.dart';

import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/Screens/event/eventToolkit.dart';
import 'package:kuandaa/Screens/ibox/favorite.dart';

import 'package:kuandaa/Screens/ibox/ibox.dart';
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatar.dart';
import 'package:kuandaa/widgets/avatarWidget.dart';
//import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// ignore: camel_case_types
class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  static final List _menu = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
  ServicesPageState createState() => ServicesPageState();
}

// ignore: camel_case_types
class ServicesPageState extends State<ServicesPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final userName = 'Adelaide';
  int _currentSelected = 3;
  List<ServiceSummary> services = [];
  List<EventSummary> eventList = [];

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

  TableRow _buildServiceTableRow(ServiceSummary item) {
    return TableRow(
        key: ValueKey(item.name),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 192, 189, 189),
        ),
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.bottom,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text('${item.name}'),
            )),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text('${item.category}'),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                '${item.status}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                '${item.action}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]);
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
              itemCount: ServicesPage._menu.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _currentSelected == index
                      ? Colors.blueGrey
                      : Colors.white,
                  child: ListTile(
                    title: index == 0
                        ? ServicesPage._menu[index]
                        : Text(
                            '${ServicesPage._menu[index]}',
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
          title: const Text("My Services"),
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
                                    'All services',
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
                              child: Table(
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                border:
                                    const TableBorder(left: BorderSide.none),
                                children: [
                                  const TableRow(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(240, 66, 65, 65),
                                    ),
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Category',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Status',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Action',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ...(getServices.map(
                                      (item) => _buildServiceTableRow(item))),
                                ],
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

  //_createDataTable() {}

}
