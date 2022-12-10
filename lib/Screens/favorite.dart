import 'package:flutter/material.dart';

import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/palette.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../Models/mobile_models/event_summary_model.dart';

class FavoritesPage extends StatefulWidget {
  FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<EventSummary> events = <EventSummary>[];

  late EventDataSource eventDataSource;

  @override
  void initState() {
    super.initState();
    events = getEvents();
    eventDataSource = EventDataSource(events: events);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfDataGrid(
          source: eventDataSource,
          columns: <GridColumn>[
            GridColumn(
              columnName: "Name",
              label: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: Text('Name'),
              ),
            ),
            GridColumn(
              columnName: "Category",
              label: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text('Category'),
              ),
            ),
            GridColumn(
              columnName: "Status",
              label: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text('Status'),
              ),
            ),
            GridColumn(
              columnName: "Action",
              label: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: Text('Action'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<DataGridRow> _events = [];
@override
List<DataGridRow> get rows => _events;

class EventDataSource extends DataGridSource {
  EventDataSource({required List<EventSummary> events}) {
    _events = events
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'Name', value: e.name),
              DataGridCell<String>(columnName: 'Category', value: e.category),
              DataGridCell<String>(columnName: 'Status', value: e.status),
              DataGridCell<String>(columnName: 'Action', value: e.action),
            ]))
        .toList();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: (dataGridCell.columnName == 'Name' ||
                  dataGridCell.columnName == 'Action')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ));
    }).toList());
  }
}
