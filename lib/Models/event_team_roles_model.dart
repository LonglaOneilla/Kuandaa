// ignore_for_file: unnecessary_this, prefer_collection_literals

class EventsTeamRolesModel {
  int? id;
  String? name;
  int? userId;
  bool? isPredifined;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  EventsTeamRolesModel(
      {this.id,
      this.name,
      this.userId,
      this.isPredifined,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  EventsTeamRolesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    isPredifined = json['Is_predifined'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['user_id'] = this.userId;
    data['Is_predifined'] = this.isPredifined;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
