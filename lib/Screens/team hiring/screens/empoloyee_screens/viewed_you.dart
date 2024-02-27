import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget/empoloyee_widget/applied.widget.dart';

class viewedYou extends StatefulWidget {
  const viewedYou({super.key});

  @override
  State<viewedYou> createState() => _viewedYouState();
}

class _viewedYouState extends State<viewedYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyanAccent.shade700,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          "Viewed you",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(11),
        child: Column(
            children: const [
              SizedBox(height: 16),
              AppledWidget(),
            ]
        ),
      ),
    );;
  }
}
