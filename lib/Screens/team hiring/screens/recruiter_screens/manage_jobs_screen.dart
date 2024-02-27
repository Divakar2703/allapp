import 'package:flutter/material.dart';
import '../../widget/Recruiter_widget/manage_jobs_widget.dart';

class ManageJobScreen extends StatelessWidget {
  const ManageJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Jobs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade300,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, // Set the color of the back button to white
          ),
          onPressed: () {
            // You can define custom behavior when the back button is pressed
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(child: ManageJobsWidget()),
    );
  }
}
