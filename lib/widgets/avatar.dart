
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class avatar extends StatelessWidget {
  final String imageUrl;
  final bool isEdit;
  final VoidCallback onClicked;
  final double size;

  const avatar({
    Key? key,
    this.isEdit = false,
    required this.imageUrl,
    required this.onClicked,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(size),
        ],
      ),
    );
  }

  Widget buildImage(double size) {
    final image = AssetImage(imageUrl);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: size,
          height: size,
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
