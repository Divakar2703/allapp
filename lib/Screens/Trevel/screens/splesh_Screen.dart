import 'package:animated_page_reveal/animated_page_reveal.dart';
import 'package:flutter/material.dart';

import '../init_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AnimatedPageReveal(
          children: [
            PageViewModel(
              title: 'Choose your place',
              description:
              'Pick the right destination according to the season because it is a key factor for a successful trip',
              color: const Color(0xff195932),
              imageAssetPath: 'assets/images/trip.png',
              iconAssetPath: 'assets/images/placeicon.png',
              titleStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              descriptionStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            PageViewModel(
              title: 'Book your flight',
              description:
              'Found a flight that matches your destination and schedule? \nBook it just a few taps',
              color: const Color(0xffc43566),
              imageAssetPath: 'assets/images/flight.png',
              iconAssetPath: 'assets/images/planicon.png',
              titleStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              descriptionStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            PageViewModel(
              title: 'Explore the world',
              description:
              'Easily discover new places and share them with your friends. \nMaybe you will plan together your next trip?',
              color: const Color(0xff3f94f5),
              imageAssetPath: 'assets/images/explore.png',
              iconAssetPath: 'assets/images/searchicon.png',
              titleStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              descriptionStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Use Future.delayed to wait for the animation to finish
    Future.delayed(Duration(seconds: 10), () {
      // Navigate to the next screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => InittScreen(),
        ),
      );
    });
  }
}

