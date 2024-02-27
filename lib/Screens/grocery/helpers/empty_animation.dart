import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyAnimation extends StatefulWidget {
  const EmptyAnimation({super.key});

  @override
  State<EmptyAnimation> createState() => _EmptyAnimationState();
}

class _EmptyAnimationState extends State<EmptyAnimation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animations/empty.json', // Replace with your animation file path
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
