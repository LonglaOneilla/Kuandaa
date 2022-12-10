import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kuandaa/Routes/route.dart' as route;
import 'package:kuandaa/palette.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.pink,
      body: IntroductionScreen(
          globalBackgroundColor: Palette.pink,
          controlsPadding: EdgeInsets.all(0.0),
          pages: [
            PageViewModel(
              titleWidget: SizedBox(
                width: 1500,
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/bg.png',
                      width: 1500,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150.0, 80.0, 8.0, 0.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              bodyWidget: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20, 0.0),
                    child: Text(
                      'Bienvenue a KUANDAA!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20, 0.0),
                    child: Text(
                      'Votre platforme numerique d\'interconnexion et de gestion evenementielle',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                  )
                ],
              ),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: ' ',
              bodyWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Image.asset(
                        'assets/images/event-removebg-preview.png',
                        width: 1000,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: const [
                          Text(
                            'Chercher',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            ' Organiser',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            ' Communiquer',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: ' ',
              bodyWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: const [
                          Text(
                            'Vous Chercher un PRESTATAIRE?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset(
                        'assets/images/seojpg-removebg-preview.png',
                        width: 900,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: const [
                          Text(
                            'Pas Besoin de vous ENREGISTRER!! Notre moteur de recherche vous aidera',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: ' ',
              bodyWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: const [
                          Text(
                            'Vous etes un PRESTATAIRE desireux de se faire connaitre?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset(
                        'assets/images/search-removebg-preview.png',
                        width: 900,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: const [
                          Text(
                            'Enregistrez-vous afin d’attirrer l’attention sur vos SERVICES',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(child: Row())
                  ],
                ),
              ),

              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () {
            if (kDebugMode) {
              Navigator.pushNamed(context, route.nav);
            }
          },
          //ClampingScrollPhysics prevent the scroll offset from exceeding the bounds of the content.
          scrollPhysics: const ClampingScrollPhysics(),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          isBottomSafeArea: true,
          skip: const Text("Skip",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          next: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
          done: const Text("Done",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          dotsDecorator: getDotsDecorator()),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String imagePath) {
    return Center(
        child: Image.asset(
      imagePath,
      width: 450,
      height: 200,
    ));
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      //imagePadding: EdgeInsets.only(top: 120),
      //pageColor: Colors.pink,
      bodyPadding: EdgeInsets.only(top: 0, left: 0, right: 0),
      titlePadding: EdgeInsets.only(top: 8.0, left: 0.0, right: 0.0),
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Colors.indigo,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}
