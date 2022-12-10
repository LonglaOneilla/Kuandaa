 import 'package:flutter/material.dart';

Widget socialMediaTemplate(userProfile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Facebook',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'userProfile.facebook',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
          height: 10,
        ),
        Text(
          'LinkedIn',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'userProfile.linkedin',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
          height: 10,
        ),
        Text(
          'Twitter',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'userProfile.twitter',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
          height: 10,
        ),
        Text(
          'Youtube',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'userProfile.youtube',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
          height: 10,
        ),
        Text(
          'Instagram',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'userProfile.instagram',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
          height: 10,
        ),
      ],
    );
  }