// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kuandaa/Screens/user_profile/profile.dart';
import 'package:kuandaa/Screens/user_profile/securityProfile.dart';
import 'package:kuandaa/helpers/user_preferences.dart';
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatarWidget.dart';
import 'package:kuandaa/widgets/textFieldWidget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  EditProfilePageState createState() => EditProfilePageState();
}

class EditProfilePageState extends State<EditProfilePage> {
  String dropDownValue = '';

  final userProfile = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Personal Info"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text('Personal Info'),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text('Security'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                        maintainState: false));
              } else if (value == 1) {
                // Navigator.pushNamed(context, route.securityProfile);
                Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                        builder: (context) => securityProfilePage(),
                        maintainState: false));
              }
            },
          )
        ],
      ),
      body:
          //controller: controller,
          ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: Palette.grey,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0.0, 0, 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15.0, 30, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              avatarWidget(
                                  isEdit: true,
                                  imageUrl: userProfile.imageUrl,
                                  onClicked: () async {}),
                              const SizedBox(
                                height: 24.0,
                              ),
                              Text(
                                'Basic Info',
                                style: TextStyle(
                                    color: Palette.pink[800],
                                    letterSpacing: 2.0,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                height: 10,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              TextFieldWidget(
                                  label: 'First Name',
                                  text: userProfile.firstName,
                                  onChanged: (firstName) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Last Name',
                                  text: userProfile.lastName,
                                  onChanged: (lastName) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Gender',
                                  text: userProfile.gender,
                                  onChanged: (gender) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Birthday',
                                  text: userProfile.birthday,
                                  onChanged: (birthday) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'About Me',
                                  text: userProfile.aboutMe,
                                  maxLines: 10,
                                  onChanged: (aboutMe) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              //for (var item in basicInfo) basicInfoTemplate(item),

                              //Contact info
                              Text(
                                'Contact Info',
                                style: TextStyle(
                                    color: Palette.pink[800],
                                    letterSpacing: 2.0,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                height: 10,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              TextFieldWidget(
                                  label: 'Phone 1',
                                  text: (userProfile.phone1).toString(),
                                  onChanged: (phone1) {}),

                              const SizedBox(
                                height: 24.0,
                              ),

                              TextFieldWidget(
                                  label: 'Phone 2',
                                  text: (userProfile.phone2).toString(),
                                  onChanged: (phone2) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Email',
                                  text: (userProfile.email).toString(),
                                  onChanged: (email) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'City',
                                  text: (userProfile.city).toString(),
                                  onChanged: (city) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Country',
                                  text: (userProfile.country).toString(),
                                  onChanged: (country) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Address',
                                  text: (userProfile.address).toString(),
                                  onChanged: (address) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              //for (var item in basicInfo) contactInfoTemplate(item),

                              //social media info
                              Text(
                                'Social Media',
                                style: TextStyle(
                                    color: Palette.pink[800],
                                    letterSpacing: 2.0,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                height: 10,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              TextFieldWidget(
                                  label: 'Facebook',
                                  text: (userProfile.facebookId).toString(),
                                  onChanged: (facebookId) {}),

                              const SizedBox(
                                height: 24.0,
                              ),

                              TextFieldWidget(
                                  label: 'Linkedin',
                                  text: (userProfile.linkedinId).toString(),
                                  onChanged: (linkedinId) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Twitter',
                                  text: (userProfile.twitterId).toString(),
                                  onChanged: (twitterId) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'YouTube',
                                  text: (userProfile.youtubeId).toString(),
                                  onChanged: (youtubeId) {}),

                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Instagram',
                                  text: (userProfile.instagramId).toString(),
                                  onChanged: (instagramId) {}),

                              const SizedBox(
                                height: 24.0,
                              ),

                              Center(
                                child: ElevatedButton(
                                  onPressed: () => {
                                    Navigator.of(context, rootNavigator: false)
                                        .push(
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage(),
                                          maintainState: false),
                                    ),
                                  },
                                  style: ElevatedButton.styleFrom(
                                      //foregroundColor:Palette.pink,
                                      backgroundColor: Palette.pink),
                                  child: const Text(
                                    'Save',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
