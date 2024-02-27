import 'package:flutter/material.dart';

class RequestedWidget extends StatelessWidget {
  // Define a list of profile data
  final List<Map<String, dynamic>> profileData = [
    {
      'name': 'Vishal golu',
      'ageHeight': '23|153cm-6ft-02inch',
      'status': 'Working',
      'location': 'Delhi',
      'education': 'B.Tech',
      'imagePath': 'assets/i.jpg',
    },
    {
      'name': 'Another Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/g.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/sonu.jpg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'name': 'Vishal Sharma',
      'ageHeight': '23|153cm-6ft-02inch',
      'status': 'Working',
      'location': 'Delhi',
      'education': 'B.Tech',
      'imagePath': 'assets/g1.jpeg',
    },
    {
      'name': 'Another Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/g1.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b3.jpeg',
    },


    // Add more profiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: _buildProfileRows(),
        ),
      ),
    );
  }

  List<Widget> _buildProfileRows() {
    List<Widget> rows = [];

    for (int i = 0; i < profileData.length; i += 2) {
      // Create a row with two profiles
      Widget row = Row(
        children: [
          Expanded(child: _buildColumn(profileData[i])),
          SizedBox(width: 8),
          if (i + 1 < profileData.length) Expanded(child: _buildColumn(profileData[i + 1])),
        ],
      );

      rows.add(row);
    }

    return rows;
  }

  Widget _buildColumn(Map<String, dynamic> data) {
    return Column(
      children: [
        Card(
          elevation: 4,
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star_border,color: Colors.pinkAccent,),
                  ],
                ),
                CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(data['imagePath']),
                ),
                SizedBox(height: 10),
                Text(
                  data['name'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  data['ageHeight'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${data['status']} |',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      ' ${data['location']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  data['education'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 4,),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   margin: EdgeInsets.only(left: 32,right: 32),
                //   height: 35,
                //   decoration: BoxDecoration(
                //     color: Colors.green,
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Icon(
                //         Icons.check, // You can replace 'Icons.check' with the desired icon
                //         color: Colors.white,
                //       ),
                //       Text(
                //         'Accept',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                //
                // SizedBox(height: 4,),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   margin: EdgeInsets.only(left: 33,right: 32),
                //   height: 35,
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Icon(
                //         Icons.close, // You can replace 'Icons.check' with the desired icon
                //         color: Colors.white,
                //       ),
                //       Text(
                //         'Decline',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent, // Set background to transparent
                      radius: 20.0,
                      child: Container(
                        width: 50.0, // Double the radius to ensure the gradient covers the entire circle
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF40C9FF),
                              Color(0xFFE81CFF)], // Replace these color codes with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.transparent, // Set background to transparent
                      radius: 20.0,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF0F7B),
                              Color(0xFFF89B29),
                            ], // Replace these color codes with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 28.0,
                        ),
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
