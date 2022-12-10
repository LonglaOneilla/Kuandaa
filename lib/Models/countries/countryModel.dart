// ignore_for_file: file_names, prefer_collection_literals, unnecessary_this

class CountryModel {
  String? name;
  String? updatedAt;
  String? createdAt;
  int? id;

  CountryModel({this.name, this.updatedAt, this.createdAt, this.id});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
