import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget/empoloyee_widget/career_preferences_widget.dart';

class CareerPreferences extends StatefulWidget {
  const CareerPreferences({super.key});

  @override
  State<CareerPreferences> createState() => _CareerPreferencesState();
}

class _CareerPreferencesState extends State<CareerPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to the desired color
        ),
        title: Center(
          child: Text(
            "Career Preferences",
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Colors.white70)
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 28,
            icon: const Icon(
              Icons.edit_note_sharp,
              color: Colors.white70,
            ),
          ),
        ],
      ),

               body: Container(
          // height: double.infinity,
         width: double.infinity,
         decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
         topLeft: Radius.circular(22), topRight: Radius.circular(22)),
         ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  CareerWidget(),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(155, 1, 1, 1),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) =>UserType()),
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Save",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
            ),
    );
  }
}
