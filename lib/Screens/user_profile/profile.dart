import 'package:flutter/material.dart';

import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/Screens/user_profile/editUserProfile.dart';
import 'package:kuandaa/Screens/user_profile/securityProfile.dart';
import 'package:kuandaa/helpers/user_preferences.dart';
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatarWidget.dart';
import 'package:kuandaa/widgets/contactInfoWidget.dart';
import 'package:kuandaa/widgets/socialMediaWidget.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  String dropDownValue = '';

  final userProfile = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Info"),
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
                      maintainState: false),
                );
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
      body: ListView(
        physics: BouncingScrollPhysics(),
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
                        Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.of(context, rootNavigator: false)
                                    .push(
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePage(),
                                  maintainState: false),
                            ),
                            style: ElevatedButton.styleFrom(
                                //foregroundColor:Palette.pink,
                                backgroundColor: Palette.pink),
                            child: const Text(
                              'Edit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15.0, 30, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              avatarWidget(
                                  imageUrl: userProfile.imageUrl,
                                  onClicked: () async {
                                    Navigator.of(context, rootNavigator: false)
                                        .push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EditProfilePage(),
                                          maintainState: false),
                                    );
                                  }),
                              const SizedBox(
                                height: 24.0,
                              ),
                              buildName(userProfile),
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

                              contactInfoTemplate(userProfile),
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
                              socialMediaTemplate(userProfile),
                              //for (var item in basicInfo) socialMediaTemplate(item),
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

  Widget buildName(userProfile) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Text(
            'First Name',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userProfile.firstName,
            style: const TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 10,
          ),
          const Text(
            'Last Name',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userProfile.lastName,
            style: const TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 10,
          ),
          const Text(
            'Gender',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userProfile.gender,
            style: const TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 10,
          ),
          const Text(
            'Birthday',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black,
                letterSpacing: 1.5),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userProfile.birthday,
            style: const TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 10,
          ),
          const Text(
            'About Me',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'I am a party freak',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 10,
          ),
        ],
      );
}
