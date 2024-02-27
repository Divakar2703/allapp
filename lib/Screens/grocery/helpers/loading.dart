import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(3.14159), // 180 degrees in radians
        child: Lottie.asset(
          'assets/animations/loading.json', // Replace with your animation file path
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
