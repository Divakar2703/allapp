import 'package:all_app/Screens/matrimonial/profile/photo_widget.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Photo",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Colors.white),
        ),
      ),
      body: SafeArea(child: PhotoWidget()),
    );
  }
}
