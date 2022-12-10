// ignore_for_file: prefer_collection_literals, unnecessary_this

class ChangePasswordModel {
  int? userId;
  String? oldPassword;
  String? password;
  String? passwordConfirm;

  ChangePasswordModel(
      {this.oldPassword, this.password, this.passwordConfirm, this.userId});

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    oldPassword = json['old_password'];
    password = json['password'];
    passwordConfirm = json['password_confirm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['old_password'] = this.oldPassword;
    data['password'] = this.password;
    data['password_confirm'] = this.passwordConfirm;
    return data;
  }
}
