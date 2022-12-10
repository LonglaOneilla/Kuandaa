import 'package:flutter/material.dart';

import 'package:kuandaa/palette.dart';
import 'package:kuandaa/Routes/route.dart' as route;

class home extends StatelessWidget {
  //final String bgImage = 'assets/images/dash.png';
  //final String logo = 'assets/images/kuandaa.PNG';

  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.gris,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 0.0, bottom: 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, route.welcome);
                        },
                        //semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Image.asset(
                            'assets/images/Ellipse.png',
                            height: 80,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: IconButton(
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, route.Home);
                              },

                              //semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Find the Trending Providers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              hintText: "Search",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Popular Providers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 500,
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/daphne.jpg',
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Daphne Njie',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Artist',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/yupevent.jpg',
                                  height: 200,
                                  width: 400,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'YUP Agency',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Agency',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/images/Locko.jpg',
                                  height: 200,
                                  width: 400,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Locko',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Artist',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onPressed: () {
                                      null;
                                    },
                                  ),
                                  const Text(
                                    'Douala Cameroon',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
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
          ),
        ));
  }
}
