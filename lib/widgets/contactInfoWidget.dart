 import 'package:flutter/material.dart';

Widget contactInfoTemplate(userProfile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone 1',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '677987888',
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
          'Phone 2',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '699000099',
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
          'Email',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userProfile.email,
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
          'City',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userProfile.city,
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
          'Country',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userProfile.country,
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
          'Address',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 1.5),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userProfile.address,
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
      ],
    );
  }