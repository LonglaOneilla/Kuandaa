// ignore_for_file: prefer_collection_literals, unnecessary_this

class TaskModel {
  int? id;
  String? name;
  String? parentId;
  String? description;
  bool? isPredefined;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  TaskModel(
      {this.id,
      this.name,
      this.parentId,
      this.description,
      this.isPredefined,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    description = json['description'];
    isPredefined = json['is_predefined'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['description'] = this.description;
    data['is_predefined'] = this.isPredefined;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
