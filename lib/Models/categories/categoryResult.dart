// ignore_for_file: file_names, unnecessary_new, prefer_collection_literals, unnecessary_this

class CategoryResult {
  bool? success;
  String? message;
  Data? data;

  CategoryResult({this.success, this.message, this.data});

  CategoryResult.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? parentId;
  String? description;
  bool? isPredefined;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.name,
      this.parentId,
      this.description,
      this.isPredefined,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    parentId = json['parent_id'];
    description = json['description'];
    isPredefined = json['is_predefined'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
