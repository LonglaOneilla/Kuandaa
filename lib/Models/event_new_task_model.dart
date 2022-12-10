// ignore_for_file: unnecessary_this, prefer_collection_literals

class EventNewTaskModel {
  int? eventId;
  int? somme;
  int? taskId;
  String? task;
  String? sousTask;
  String? description;

  EventNewTaskModel({
    this.eventId,
    this.somme,
    this.taskId,
    this.task,
    this.sousTask,
    this.description,
  });

  EventNewTaskModel.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    somme = json['somme'];
    task = json['task'];
    taskId = json['task_id'];
    sousTask = json['sous_task'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['event_id'] = this.eventId;
    data['task'] = this.task;
    data['somme'] = this.somme;
    data['task_id'] = this.taskId;
    data['sous_task'] = this.sousTask;
    data['description'] = this.description;
    return data;
  }
}
