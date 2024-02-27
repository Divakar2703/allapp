import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget/empoloyee_widget/applied.widget.dart';

class AppliedScreen extends StatefulWidget {
  const AppliedScreen({super.key});

  @override
  State<AppliedScreen> createState() => _AppliedScreenState();
}

class _AppliedScreenState extends State<AppliedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Theme.of(context).primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          "Applied",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Colors.white70
          )
        ),
      ),
    //     body: SingleChildScrollView(
    //     padding: const EdgeInsets.all(11),
    // child: Column(
    // children: const [
    // SizedBox(height: 16),
    //   AppledWidget(),
    // ]
    // ),
    //     ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
        ),
            child: SingleChildScrollView(
            padding: const EdgeInsets.all(11),
        child: Column(
        children: const [
        SizedBox(height: 16),
          AppledWidget(),
        ]
        ),
            ),
      ),
    );
  }
}
