// ignore_for_file: prefer_collection_literals

class EventRetroPlannigModel {
  int? id;
  int? eventId;
  int? eventTeamId;
  bool? isDone;
  String? deathLine;
  int? taskId;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  EventRetroPlannigModel(
      {this.id,
      this.eventId,
      this.eventTeamId,
      this.isDone,
      this.deathLine,
      this.taskId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  EventRetroPlannigModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventId = json['event_id'];
    eventTeamId = json['event_team_id'];
    isDone = json['is_done'];
    deathLine = json['death_line'];
    taskId = json['task_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['event_id'] = eventId;
    data['event_team_id'] = eventTeamId;
    data['is_done'] = isDone;
    data['death_line'] = deathLine;
    data['task_id'] = taskId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
