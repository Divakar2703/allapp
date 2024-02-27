import 'package:flutter/material.dart';

class PrefereWidget extends StatelessWidget {
  const PrefereWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'What I Prefere ?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.pinkAccent
                  ),
                ),
              ],
            ),
            SizedBox(height: 15), // Adding some space
            Row(
              children: [
                Expanded(
                  flex: 2, // Adjust the flex values as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Age  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Height  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "HighestQualification:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mother Tongue :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Working As :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Marital Status :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Physical Status :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Annual Income :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Religions :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Community  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Caste  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Star   :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Dosh   :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Eating Habits  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Smoking Habits  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Drinking Habits  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Country  :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "State   :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "City   :",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),


                    ],
                  ),
                ),
                Expanded(
                  flex: 2, // Adjust the flex values as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "28",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "6.8",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "B.tech",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Hindi",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Web Developer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Single',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Normal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        ' 2 - 5 LPA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'aaaa',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'bbbb.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'cccc',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'ddd',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'eeeee',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Nonveg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'None.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'None',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Nonveg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'None.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'None',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            //
            // SizedBox(height: 15),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'What I Think ?',
            //       style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.w400,
            //           color: Colors.pinkAccent
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10),
            // Wrap(
            //   children: [
            //     Text(
            //       'What I expect from a partner ?',
            //       style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Wrap(
            //   children: [
            //     Text(
            //       'I expect to be treated with kindness,'
            //           ' love, affection, and respect. '
            //           'I do not tolerate emotional or'
            //           ' physical abuse. I expect '
            //           'My partner to be loyal. This does not mean I expect '
            //           'our relationship to be free of conflict.',
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),
            //
            // SizedBox(height: 10),
            // Wrap(
            //   children: [
            //     Text(
            //       'What are my future goals and plans ?',
            //       style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Wrap(
            //   children: [
            //     Text(
            //      "My future plans are having a job I enjoy doing, finding "
            //          "good life-work balance, foster good relationships both at"
            //          " work and in my personal life, and simply enjoy every day as"
            //          " it comes and goes. Of course, I plan to continue working on"
            //          " my language skills, because I want to become better in my work.",
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10),
            // Wrap(
            //   children: [
            //     Text(
            //       'What are my future goals and plans ?',
            //       style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Wrap(
            //   children: [
            //     Text(
            //      "“Marriage is more than a physical union; it is also a"
            //          " spiritual and emotional union.” Marriage is the "
            //          "beginning—the beginning of the family—and is a "
            //          "life-long commitment. It also provides an opportunity "
            //          "to grow in selflessness as you serve your wife and children.",
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.w400,
            //           color:Colors.grey.shade800
            //       ),
            //     ),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}
