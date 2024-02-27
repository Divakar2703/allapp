import 'package:flutter/material.dart';

import 'Widgets/complite_profile_widget.dart';
import 'Widgets/database_profile_widget.dart';
import 'Widgets/filter_scrren.dart';

class DatabaseScreen extends StatefulWidget {
  const DatabaseScreen({super.key});

  @override
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Hello, Vivek',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8,right: 4,left: 4),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            hintText: "Search by ID",
                            hintStyle: TextStyle(color: Colors.black54),
                            contentPadding: EdgeInsets.only(left: 16),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  // Add a filter icon here
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );

                    },
                    icon: Icon(
                      Icons.tune_outlined,
                      color: Colors.pinkAccent,
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: 10),

            CompliteProfileWidget(),
            DataBaseProfileWidget()
          ],
        ),
      ),
    );
  }
}
