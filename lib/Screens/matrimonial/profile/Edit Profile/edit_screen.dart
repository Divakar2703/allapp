import 'package:flutter/material.dart';

import 'edit_about_personal.dart';
import 'edit_education.dart';
import 'edit_family.dart';
import 'edit_personal.dart';
import 'edit_physical.dart';
import 'edit_prefere.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Edit your Profile",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Personal Deatail',),
                Tab(text: 'Physical attribute & Lifestyle'),
                Tab(text: 'Education & Occupation'),
                Tab(text: 'Family & Religion'),
                Tab(text: 'Prefere preference',),
              ],
              isScrollable: true,
              labelColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[

                  EditPersonal(),

                  EditPhysical(),

                  EditEducation(),

                  EditFamily(),

                  EditPrefere()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
