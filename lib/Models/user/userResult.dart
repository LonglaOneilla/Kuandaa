// ignore_for_file: file_names, prefer_collection_literals, unnecessary_this

class UserResult {
  String? message;
  String? accessToken;
  String? tokenType;
  User? user;
  int? expiresIn;

  UserResult(
      {this.message,
      this.accessToken,
      this.tokenType,
      this.user,
      this.expiresIn});

  UserResult.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = this.message;
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['expires_in'] = this.expiresIn;
    return data;
  }
}

class User {
  int? id;
  String? apiKey;
  int? roleId;
  String? name;
  String? email;
  String? gender;
  String? birthday;
  String? aboutMe;
  int? phone1;
  int? phone2;
  String? city;
  String? country;
  String? address;
  String? instagramId;
  String? youtubeId;
  String? twitterId;
  String? facebookId;
  String? googleId;
  String? linkedinId;
  String? image;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? stripeId;
  String? pmType;
  String? pmLastFour;
  String? trialEndsAt;

  User(
      {this.id,
      this.apiKey,
      this.roleId,
      this.name,
      this.email,
      this.gender,
      this.birthday,
      this.aboutMe,
      this.phone1,
      this.phone2,
      this.city,
      this.country,
      this.address,
      this.instagramId,
      this.youtubeId,
      this.twitterId,
      this.facebookId,
      this.googleId,
      this.linkedinId,
      this.image,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.stripeId,
      this.pmType,
      this.pmLastFour,
      this.trialEndsAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    apiKey = json['api_key'];
    roleId = json['role_id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    birthday = json['birthday'];
    aboutMe = json['about_me'];
    phone1 = json['phone1'];
    phone2 = json['phone2'];
    city = json['city'];
    country = json['country'];
    address = json['address'];
    instagramId = json['instagram_id'];
    youtubeId = json['youtube_id'];
    twitterId = json['twitter_id'];
    facebookId = json['facebook_id'];
    googleId = json['google_id'];
    linkedinId = json['linkedin_id'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    stripeId = json['stripe_id'];
    pmType = json['pm_type'];
    pmLastFour = json['pm_last_four'];
    trialEndsAt = json['trial_ends_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['api_key'] = this.apiKey;
    data['role_id'] = this.roleId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['about_me'] = this.aboutMe;
    data['phone1'] = this.phone1;
    data['phone2'] = this.phone2;
    data['city'] = this.city;
    data['country'] = this.country;
    data['address'] = this.address;
    data['instagram_id'] = this.instagramId;
    data['youtube_id'] = this.youtubeId;
    data['twitter_id'] = this.twitterId;
    data['facebook_id'] = this.facebookId;
    data['google_id'] = this.googleId;
    data['linkedin_id'] = this.linkedinId;
    data['image'] = this.image;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['stripe_id'] = this.stripeId;
    data['pm_type'] = this.pmType;
    data['pm_last_four'] = this.pmLastFour;
    data['trial_ends_at'] = this.trialEndsAt;
    return data;
  }
}
