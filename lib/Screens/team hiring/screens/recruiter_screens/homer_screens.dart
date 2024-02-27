import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widget/Recruiter_widget/categoryr_widget.dart';
import '../../widget/Recruiter_widget/current_job_widget.dart';
import '../../widget/Recruiter_widget/job_posted_widget.dart';
import '../../widget/empoloyee_widget/category_widget.dart';


class HomeRScreen extends StatefulWidget {
  const HomeRScreen({super.key});

  @override
  State<HomeRScreen> createState() => _HomeRScreenState();
}

class _HomeRScreenState extends State<HomeRScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue.shade300,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('assets/sonu.jpg'),
              radius: 20,
            ),
          ),
          centerTitle: true,
          title: Text(
              "Hi Divakar",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70
              )
          ),
          actions: [
            IconButton(
              onPressed: () {},
              splashRadius: 24,
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.white70,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),
              child: Container(
                height: 56,
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 48,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Developer, google, etc",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          ),
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(11),
              child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          Center(
                            child: Text('Manage Jobs',
                              style:TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black87
                              ),
                            ),
                          ), // Add your HeadlineWidget here
                          SizedBox(height: 16),
                          Categorye(),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Jobs Posted',
                                    style:TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal, // Scroll horizontally
                              child: Row(
                                children: [
                                  CurrentJobWidget(), // Place TotalWidget here or wherever you need it
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Center(
                      child: Text('Current jobs',
                        style:TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.blue.shade300,
                        ),
                      ),
                    ), // Add your HeadlineW
                    SizedBox(height: 16),
                    JobPosted(),
                  ]
              )

          ),
        )
    );
  }
}
