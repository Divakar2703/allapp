import 'package:flutter/material.dart';

import '../../model/Empoloyee_models/profile_detail.dart';
import '../../screens/empoloyee_screens/edit_bassic_detail.dart';
class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: profile.length,
        separatorBuilder: (context, index) {
          return const Divider();

        },
        itemBuilder: (context, index) {
          final pro = profile[index];

          return Wrap(children: [
            Container(
              // width: double.infinity,
              // height: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),

              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                    ),
                    Icon(
                      Icons.person,
                      size: 20,
                    ),
                    SizedBox(width: 7),
                    Expanded(
                      child: Text(
                        pro.detail,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit_note_sharp,
                        size: 25,
                        color: Colors.cyanAccent.shade700,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Edit()),
                        );
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Email :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Gender :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "DOB :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Qualification :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pro.contact,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          pro.email,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          pro.gender,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          pro.dob,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          pro.qualification,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    )),
                    // Expanded(
                    //     child: Column(
                    //   children: [],
                    // ))
                  ],
                ),
              ]),
            ),
          ]);
          //     ],
          //   ),
          // );
        });
  }
}
