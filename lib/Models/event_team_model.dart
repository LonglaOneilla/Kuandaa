// ignore_for_file: prefer_collection_literals, unnecessary_this

class EventsTeamModel {
  int? id;
  String? name;
  int? userId;
  int? eventId;
  int? roleId;
  int? commentId;
  String? createdAt;
  String? updatedAt;

  EventsTeamModel({
    this.id,
    this.name,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.commentId,
    this.eventId,
    required this.roleId,
  });

  EventsTeamModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    commentId = json['comment_id'];
    eventId = json['event_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['user_id'] = this.userId;
    data['comment_id'] = this.commentId;
    data['event_id'] = this.eventId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['role_id'] = this.roleId;
    return data;
  }
}
