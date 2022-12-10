// ignore_for_file: prefer_collection_literals, unnecessary_this

class UserImageModel {
  String? userId;
  String? image;

  UserImageModel({this.userId, this.image});

  UserImageModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['image'] = this.image;
    return data;
  }
}
