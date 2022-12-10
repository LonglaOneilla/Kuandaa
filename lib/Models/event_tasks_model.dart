// ignore_for_file: unnecessary_this, prefer_collection_literals

class EventTasksModel {
  int? id;
  int? eventId;
  int? taskId;
  int? amount;
  bool? isDone;
  String? endDate;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  EventTasksModel({
    this.id,
    this.eventId,
    this.taskId,
    this.amount,
    this.isDone,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  EventTasksModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventId = json['event_id'];
    taskId = json['task_id'];
    amount = json['amount'];
    isDone = json['is_done'];
    endDate = json['end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['event_id'] = this.eventId;
    data['task_id'] = this.taskId;
    data['amount'] = this.amount;
    data['is_done'] = this.isDone;
    data['end_date'] = this.endDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
