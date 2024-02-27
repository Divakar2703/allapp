import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../Main Screen/components/home_header.dart';
import '../Main Screen/components/search_field.dart';
import 'component/headline_Services.dart';

class HomePageServices extends StatefulWidget {
  const HomePageServices({super.key});

  @override
  State<HomePageServices> createState() => _HomePageServicesState();
}

class _HomePageServicesState extends State<HomePageServices> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: AppBar(
              backgroundColor: Colors.black87,
              title: null,
              flexibleSpace: Column(
                children: [
                  HeadLineServices(),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
  }
}
