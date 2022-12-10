import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kuandaa/palette.dart';

class avatarWidget extends StatelessWidget {
  final String imageUrl;
  final bool isEdit;
  final VoidCallback onClicked;

  const avatarWidget({
    Key? key,
    this.isEdit = false,
    required this.imageUrl,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = AssetImage(imageUrl);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => ClipOval(
        child: buildCircle(
          color: Colors.white,
          all: 3,
          child: ClipOval(
            child: buildCircle(
              color: color,
              all: 8,
              child: Icon(
                isEdit ? Icons.add_a_photo : Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      );

  Widget buildCircle(
          {required Widget child, required double all, required Color color}) =>
      Container(
        color: color,
        padding: EdgeInsets.all(all),
        child: child,
      );
}
