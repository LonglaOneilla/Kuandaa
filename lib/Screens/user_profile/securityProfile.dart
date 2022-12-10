import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/Screens/user_profile/profile.dart';
import 'package:kuandaa/palette.dart';
import 'package:kuandaa/widgets/avatarWidget.dart';
import 'package:kuandaa/widgets/textFieldWidget.dart';

class securityProfilePage extends StatefulWidget {
  securityProfilePage({Key? key}) : super(key: key);

  @override
  _securityProfilePageState createState() => _securityProfilePageState();
}

class _securityProfilePageState extends State<securityProfilePage> {
  String? oldPwd;
  String? newPwd;
  String? confirmPwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security"),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.person,
        //     color: Colors.white,
        //     size: 30,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
        centerTitle: true,
        automaticallyImplyLeading: true,
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15.0, 30, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change your Password",
                                style: TextStyle(
                                    color: Palette.pink[800],
                                    letterSpacing: 2.0,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Old Password',
                                  text: ' ',
                                  onChanged: (oldPwd) {}),
                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'New Password',
                                  text: ' ',
                                  onChanged: (newPwd) {}),
                              const SizedBox(
                                height: 24.0,
                              ),
                              TextFieldWidget(
                                  label: 'Confirm Password',
                                  text: ' ',
                                  onChanged: (confirmPwd) {}),
                              const SizedBox(
                                height: 24.0,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context,
                                          rootNavigator: false)
                                      .push(
                                    MaterialPageRoute(
                                        builder: (context) => ProfilePage(),
                                        maintainState: false),
                                  ),
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
