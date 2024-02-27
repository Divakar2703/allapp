import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/route/app_route_name.dart';
import '../../model/Empoloyee_models/job.dart';

class AppledWidget extends StatelessWidget {
  const AppledWidget({super.key});

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
              AppRouteName.Applied,
              arguments: recentJobs[index],
            );
          },
          child: Container(

            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white,
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
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentJobs[index].jobTitle,
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleMedium,
                      ),
                      SizedBox(height: 7,),
                      Column(
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
                                ?.copyWith(color: Colors.cyanAccent.shade200,
                            )


                        ),
                        SizedBox(height: 20,),

                        const Icon(Icons.bookmark_border_rounded),
                        Text(
                          recentJobs[index].timeStamp,
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium,
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
