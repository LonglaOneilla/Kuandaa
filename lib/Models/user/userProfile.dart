import 'package:kuandaa/Models/user/userModel.dart';

class userProfile extends UserModel {
  final String imageUrl;
  String? firstName;
  String? lastName;
  String? about;

  userProfile(
      {this.firstName,
      required this.imageUrl,
      this.lastName,
      String? gender,
      String? birthday,
      String? about,
      int? phone1,
      int? phone2,
      String? email,
      String? city,
      String? country,
      String? address,
      String? facebook,
      String? linkedin,
      String? twitter,
      String? youtube,
      String? instagram
      })
      : super(gender: gender, 
      birthday: birthday,
      aboutMe: about,
      phone1: phone1,
      phone2:phone2,
      email: email,
      city: city,
      country: country,
      address: address,
      facebookId: facebook,
      linkedinId: linkedin,
      twitterId: twitter,
      youtubeId: youtube,
      instagramId: instagram,
      );
}


