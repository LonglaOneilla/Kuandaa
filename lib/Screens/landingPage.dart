import 'package:flutter/material.dart';

import 'package:kuandaa/palette.dart';

class LandingPage extends StatelessWidget {
  //final String bgImage = 'assets/images/dash.png';
  final String logo = 'assets/images/kuandaa.png';

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.pink,
      body: const Center(
        child: Image(image: AssetImage('assets/images/logo.png')),
      )
    );
  }
}
