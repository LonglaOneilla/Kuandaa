// ignore_for_file: file_names, prefer_collection_literals, unnecessary_this

class EventFlowModel {
  int? eventId;
  String? name;
  String? description;
  String? date;
  String? time;

  EventFlowModel(
      {this.eventId, this.name, this.description, this.date, this.time});

  EventFlowModel.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    name = json['name'];
    description = json['description'];
    date = json['date'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['event_id'] = this.eventId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['date'] = this.date;
    data['time'] = this.time;
    return data;
  }
}
