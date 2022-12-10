// ignore_for_file: prefer_collection_literals, unnecessary_this

class EventBudgetsModel {
  int? id;
  String? somme;
  int? taskId;
  int? eventId;
  String? createdAt;
  String? updatedAt;

  EventBudgetsModel({
    this.id,
    this.somme,
    this.taskId,
    this.createdAt,
    this.updatedAt,
    this.eventId,
  });

  EventBudgetsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    somme = json['somme'];
    eventId = json['event_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    taskId = json['task_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['somme'] = this.somme;
    data['task_id'] = this.taskId;
    data['event_id'] = this.eventId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
