import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

import 'bottom.dart';


class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: '',
      subTitle: 'Welcome to our matrimonial, where every love story begins...',
      imageUrl: 'assets/e.png',
    ),
    Introduction(
      title: '',
      subTitle: 'Explore potential matches and swipe right to show interest...',
      imageUrl: 'assets/f.png',
    ),
    Introduction(
      title: '',
      subTitle: 'Chat with your matches and get to know them better... ',
      imageUrl: 'assets/g.png',
    ),
    Introduction(
      title: '',
      subTitle: 'Get ready to embark on a journey of love and companionship... ',
      imageUrl: 'assets/c.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Bottom(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
