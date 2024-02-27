import 'package:all_app/Screens/matrimonial/shortList/requested_widget.dart';
import 'package:all_app/Screens/matrimonial/shortList/shortlisted_widget.dart';
import 'package:all_app/Screens/matrimonial/shortList/viewed_widget.dart';
import 'package:flutter/material.dart';
import 'irequested_widget.dart';

class ShortListScreen extends StatelessWidget {
  const ShortListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Shortlisted",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'ShortListed',),
                Tab(text: 'Who viewed me'),
                Tab(text: 'Who requested me'),
                Tab(text: 'I requested for'),
                // Add more tabs as needed
              ],
              isScrollable: true, // Enable scrolling for the tabs
              labelColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[

                  ShortListedWidget(),

                  ViewedWidget(),

                  RequestedWidget(),

                  IRequestedWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
