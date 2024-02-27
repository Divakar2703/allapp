import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/empoloyee_screens/cureer_preferences_screen.dart';
import '../../screens/empoloyee_screens/user_type_screen.dart';

class OtherInformation extends StatelessWidget {
  const OtherInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
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
              Icon(
                Icons.grading,
                size: 20,
              ),
              SizedBox(width: 7,),
              Text(
               "other information",
                style: TextStyle(
                 color:Colors.cyanAccent.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),

              ),
            ]),
        SizedBox(
          height: 10,
        ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Icon(
        //             Icons.person_outline,
        //             size: 20,
        //           ),
        //           Text(
        //             "Career preferences",
        //             style: Theme.of(context).textTheme.bodyLarge,
        //           ),
        //           SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             "Customer Support",
        //             style: Theme.of(context).textTheme.bodyLarge,
        //           ),
        //           SizedBox(
        //             height: 8,
        //           ),
        //           Text(
        //             " Singn Out",
        //             style: Theme.of(context).textTheme.bodyLarge,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //
        //           ],
        //         )),
        //     // Expanded(
        //     //     child: Column(
        //     //   children: [],
        //     // ))
        //   ],
        // ),

        Expanded(child:
        Column(
          children: [
         //   ElevatedButton(onPressed: , child: child)
         //    Row(
         //      crossAxisAlignment: CrossAxisAlignment.start,
         //      children: [
         //
         //      Icon(
         //
         //                  Icons.tune_outlined,
         //                  size: 20,
         //                ),
         //                SizedBox(width: 5,),
         //           //     TextButton(onPressed:Career_Preferences_screen , child: child)
         //                Text(
         //                  "Career preferences",
         //                  style: Theme.of(context).textTheme.bodyLarge,
         //                ),
         //        SizedBox(width: 179,),
         //        Icon(
         //          Icons.keyboard_double_arrow_right,
         //          size: 20,
         //        ),
         //
         //      ],
         //    ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CareerPreferences()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.tune_outlined,
                        size: 20,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "Career preferences",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Spacer(), // This will push the next icon to the right
                Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.wifi_calling_3_outlined,
                  size: 20,
                ),
                SizedBox(width: 5,),
                Text(
                  "Customer Support",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 20,
                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [

              
                Padding(
                  padding: const EdgeInsets.fromLTRB(155, 1, 1, 1),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>UserType()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.logout,color: Colors.white,),
                            SizedBox(width: 8),
                            Text(
                              "Sign out",
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
          ],
        )

        )
      ]),
    );
  }
}
