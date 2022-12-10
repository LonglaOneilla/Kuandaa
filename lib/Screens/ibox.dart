import 'package:flutter/material.dart';
import 'package:kuandaa/Models/mobile_models/event_summary_model.dart';

import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatarWidget.dart';
//import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class iBoxPage extends StatefulWidget {
  @override
  iBoxPageState createState() => iBoxPageState();
}

// ignore: camel_case_types
class iBoxPageState extends State<iBoxPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final userName = 'Adelaide';
  List<ServiceSummary> services = [];
  List<EventSummary> eventList = [];

  @override
  void initState() {
    super.initState();
  }

  List<EventSummary> getEvents() {
    return [
      EventSummary(
          name: 'Fair Conference',
          category: 'Conference',
          status: 'active',
          action: 'view details'),
      EventSummary(
          name: 'CA after party',
          category: 'Party',
          status: 'active',
          action: 'view details'),
      EventSummary(
          name: 'Megrave Party',
          category: 'Party',
          status: 'completed',
          action: 'view details'),
    ];
  }

  final BoxDecoration _customGrayDecoration =
      const BoxDecoration(color: Color.fromARGB(44, 85, 83, 83));

  TableRow _buildEventTableRow(EventSummary item) {
    return TableRow(
        key: ValueKey(item.name),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 192, 189, 189),
        ),
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
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
        backgroundColor: Palette.gris,
        drawer: Drawer(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 10.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  avatarWidget(
                    imageUrl: 'assets/images/Locko.jpg',
                    onClicked: () async {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      userName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 2),
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
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      'DashBoard',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      'My Events',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      'Services Offered',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      'Event Toolkit',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          _globalKey.currentState?.openDrawer();
                        },
                        //semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Image.asset(
                            'assets/images/Ellipse.png',
                            height: 100,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Text(
                                      userName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },

                                      //semanticLabel: 'Text to announce in accessibility modes',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Palette.pink,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Card(
                            color: Palette.bleu,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 15, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '10',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'My Events',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    height: 50,
                                    width: 170,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 3.0, 10, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'More info',
                                            style: TextStyle(
                                                //color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 0),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.black,
                                                size: 26,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 17.4,
                          ),
                          Card(
                            color: Palette.verte,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 15, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '10',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Services Offered',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    height: 50,
                                    width: 170,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 3.0, 10, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'More info',
                                            style: TextStyle(
                                                //color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              color: Colors.black,
                                              size: 26,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Latest Events',
                                style: TextStyle(
                                  color: Palette.pink,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, route.signIn),
                              style: ElevatedButton.styleFrom(
                                  //foregroundColor:Palette.pink,
                                  backgroundColor: Palette.pink),
                              child: const Text(
                                'New',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 10.0,
                        thickness: 1,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                          child: Table(
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            border: const TableBorder(left: BorderSide.none),
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
                              ...(getEvents()
                                  .map((item) => _buildEventTableRow(item))),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Latest Services',
                                style: TextStyle(
                                  color: Palette.pink,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, route.signIn),
                              style: ElevatedButton.styleFrom(
                                  //foregroundColor:Palette.pink,
                                  backgroundColor: Palette.pink),
                              child: const Text(
                                'New',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 10.0,
                        thickness: 1,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                          child: Table(
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            border: const TableBorder(left: BorderSide.none),
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
                              ...(getServices
                                  .map((item) => _buildServiceTableRow(item))),
                            ],
                          ),
                        ),
                      ),
                    ],
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
