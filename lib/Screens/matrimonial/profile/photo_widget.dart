import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  // Define a list of profile data
  final List<Map<String, dynamic>> profileData = [
    {
      'imagePath': 'assets/i.jpg',
    },
    {
      'imagePath': 'assets/g.jpeg',
    },
    {
      'imagePath': 'assets/sonu.jpg',
    },
    {
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'imagePath': 'assets/b2.jpeg',
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
          SizedBox(width: 2),
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
          elevation: 3,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              // border: Border.all(
              //   color: Colors.pinkAccent,
              //   width: 0.5,
              // ),
            ),
            child: Image.asset(data['imagePath'],
              fit: BoxFit.cover,),
          ),
        ),
      ],
    );
  }
}
