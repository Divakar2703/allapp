import 'package:flutter/material.dart';

import '../../model/Empoloyee_models/career_pre.model.dart';

class CareerWidget extends StatefulWidget {
  const CareerWidget({super.key});

  @override
  State<CareerWidget> createState() => _CareerWidgetState();
}

class _CareerWidgetState extends State<CareerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: preCareers.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          // );
          // },
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        preCareers[index].Hedline,

                        // 'Objective',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  children: [
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: preCareers[index].word,
                            labelStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              // Set the border radius
                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              // Set the border radius

                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                // Set the border radius

                                borderSide: BorderSide(color: Colors.black54))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
