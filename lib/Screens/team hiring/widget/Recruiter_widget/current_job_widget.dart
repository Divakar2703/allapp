import 'package:flutter/material.dart';

class CurrentJobWidget extends StatelessWidget {
  const CurrentJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //total companiees
        Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
          width: 220,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
              color: Colors.white70,
           border: Border.all(
             color: Colors.black45, // You can change 'Colors.blue' to your desired border color
           width: 1, // Adjust the border width as needed
             ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('goiwg',
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Graduation |',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(' 2 -5 Yr',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rs 5-7 LPA',
                      style:TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_travel_rounded,
                    color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Work From Office',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_sharp,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Full Time',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
          width: 220,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white70,
            border: Border.all(
              color: Colors.black45, // You can change 'Colors.blue' to your desired border color
              width: 1, // Adjust the border width as needed
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('goiwg',
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Graduation |',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(' 2 -5 Yr',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rs 5-7 LPA',
                      style:TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_travel_rounded,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Work From Office',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_sharp,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Full Time',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
          width: 220,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white70,
            border: Border.all(
              color: Colors.black45, // You can change 'Colors.blue' to your desired border color
              width: 1, // Adjust the border width as needed
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('goiwg',
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Graduation |',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(' 2 -5 Yr',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rs 5-7 LPA',
                      style:TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_travel_rounded,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Work From Office',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_sharp,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Full Time',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
          width: 220,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white70,
            border: Border.all(
              color: Colors.black45, // You can change 'Colors.blue' to your desired border color
              width: 1, // Adjust the border width as needed
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('goiwg',
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Graduation |',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(' 2 -5 Yr',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rs 5-7 LPA',
                      style:TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_travel_rounded,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Work From Office',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_sharp,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text('Full Time',
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),








      ],

    );
  }
}
