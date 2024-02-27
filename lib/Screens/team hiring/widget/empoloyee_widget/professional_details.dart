import 'package:flutter/material.dart';

import '../../model/Empoloyee_models/professional_detail.dart';
import '../../screens/empoloyee_screens/edit_Professional.dart';
class Professional extends StatelessWidget {
  const Professional({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: prof.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          final professional = prof[index];

          return Wrap(
            children: [Container(
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
                        width: 95,
                      ),
                      Icon(
                        Icons.business_center_sharp,
                        size: 20,
                      ),
                      SizedBox(width: 7,),
                      // Text(
                      //   professional.professiona,
                      //   style: Theme.of(context).textTheme.subtitle1,
                      // ),
                      Expanded(
                        child: Text(
                          professional.professiona,
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
                            MaterialPageRoute(builder: (context) => EditProfessional()),
                          );
                        },
                      )

                    ]
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
                            "Company :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Designation :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "FromDate :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "ToDate :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "NoticPeriod :",
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
                              professional.Company,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              professional.Designation,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              professional.FromDate,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              professional.ToDate,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              professional.NoticPeriod,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        )),
                  ],
                ),
              ]),
            ),
          ]
          );
          //     ],
          //   ),
          // );
        });

  }
}
