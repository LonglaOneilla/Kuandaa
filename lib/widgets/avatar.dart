import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kuandaa/palette.dart';

class avatar extends StatelessWidget {
  final String imageUrl;
  final bool isEdit;
  final VoidCallback onClicked;

  const avatar({
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
          width: 100,
          height: 100,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildCircle(
          {required Widget child, required double all, required Color color}) =>
      Container(
        color: color,
        padding: EdgeInsets.all(all),
        child: child,
      );
}
