// ignore_for_file: unnecessary_this, prefer_collection_literals

class CurrencyModel {
  int? id;
  String? name;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  CurrencyModel(
      {this.id, this.name, this.deletedAt, this.createdAt, this.updatedAt});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
