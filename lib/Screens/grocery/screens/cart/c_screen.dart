import 'package:flutter/material.dart';

import '../../common_widgets/app_text.dart';
import 'component/c_widget.dart';

class CScrren extends StatefulWidget {
  const CScrren({super.key});

  @override
  State<CScrren> createState() => _CScrrenState();
}

class _CScrrenState extends State<CScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "My Cart",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              CWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
