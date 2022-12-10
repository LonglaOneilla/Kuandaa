// ignore_for_file: prefer_collection_literals, unnecessary_this, file_names

class CategoryModel {
  String? name;
  String? parentId;
  String? description;
  bool? isPredefined;
  String? updatedAt;
  String? createdAt;
  int? id;

  CategoryModel(
      {this.name,
      this.parentId,
      this.description,
      this.isPredefined,
      this.updatedAt,
      this.createdAt,
      this.id});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    parentId = json['parent_id'];
    description = json['description'];
    isPredefined = json['is_predefined'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['description'] = this.description;
    data['is_predefined'] = this.isPredefined;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
