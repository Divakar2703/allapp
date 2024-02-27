import 'package:flutter/material.dart';

import '../../core/route/app_route_name.dart';
import '../../model/Empoloyee_models/job.dart';

class JobPosted extends StatefulWidget {
  const JobPosted({super.key});

  @override
  State<JobPosted> createState() => _JobPostedState();
}

class _JobPostedState extends State<JobPosted> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recentJobs.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouteName.detailJob,
              arguments: recentJobs[index],
            );
          },
          child: Container(

            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ]
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                             recentJobs[index].jobTitle,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87
                        )
                      ),
                      SizedBox(height: 7,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 8, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.card_travel_rounded,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  recentJobs[index].jobType,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyMedium,
                                ),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_outlined,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  recentJobs[index].hr,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyMedium,
                                ),
                              ],

                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                const Icon(
                                  Icons.business,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Bits Pan India",
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyMedium,
                                ),
                              ],
                            ),

                          SizedBox(height: 7,),
                            Row(
                              children: [
                                const Icon(
                                  Icons.place_outlined,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  recentJobs[index].locationShort,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 5,),
                        Text(
                            recentJobs[index].salary,
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.blue.shade300,
                            )

                        ),


                        Container(
                          padding: const EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage(
                              recentJobs[index].companyImage,
                            ),
                            width: 48,
                            height: 48,
                          ),
                        ),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
