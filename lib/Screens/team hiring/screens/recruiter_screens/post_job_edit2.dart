import 'package:all_app/Screens/team%20hiring/screens/recruiter_screens/post_job_edit3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Postjob2 extends StatefulWidget {
  const Postjob2({super.key});

  @override
  State<Postjob2> createState() => _Postjob2State();
}

class _Postjob2State extends State<Postjob2> {
  @override

  List<String> items = [ 'Select', 'Fresher', '1 to 2 Yr', '2 to 4 Yr', '4+ Yr'];
  String? selectItem = 'Select';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade300,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          'Post Your Job Here',
          style: TextStyle(color: Colors.white70),
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
          child: Column(
            children: [
              Padding(
                  padding:const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                            'Job Detail',
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          )),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                            'Employee prefer',
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          )),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                            'Description',
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Employee Prefer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              //exp
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Exp. Required',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectItem,
                        items: items.map((job) =>
                            DropdownMenuItem<String>(
                              value: job,
                              child: Text(
                                job,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                ),
                              ),
                            )).toList(),
                        onChanged: (job) {
                          setState(() {
                            selectItem = job;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),

              //Qualification
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Qualification',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectItem,
                        items: items.map((job) =>
                            DropdownMenuItem<String>(
                              value: job,
                              child: Text(
                                job,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                ),
                              ),
                            )).toList(),
                        onChanged: (job) {
                          setState(() {
                            selectItem = job;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),

              //english level
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' English Level',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectItem,
                        items: items.map((job) =>
                            DropdownMenuItem<String>(
                              value: job,
                              child: Text(
                                job,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                ),
                              ),
                            )).toList(),
                        onChanged: (job) {
                          setState(() {
                            selectItem = job;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),

              //Min sal
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '    Salary',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),//from
              // New section for Experience Required
              Row(
                children: [
                  // 1st Column
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '     From',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: 48,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectItem,
                                  items: items.map((item) =>
                                      DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      )).toList(),
                                  onChanged: (item) {
                                    setState(() {
                                      selectItem = item;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between columns
                  // 2nd Column
                  Expanded(
                    flex: 1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '     To',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  width: double.infinity,
                                  height: 48,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: selectItem,
                                      items: items.map((item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          )).toList(),
                                      onChanged: (item) {
                                        setState(() {
                                          selectItem = item;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ]
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '    Working Days',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),//from
        // New section for Experience Required
        Row(
          children: [
            // 1st Column
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     From',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: 48,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectItem,
                            items: items.map((item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                )).toList(),
                            onChanged: (item) {
                              setState(() {
                                selectItem = item;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10), // Add some space between columns
            // 2nd Column
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     To',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: 48,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectItem,
                            items: items.map((item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                )).toList(),
                            onChanged: (item) {
                              setState(() {
                                selectItem = item;
                              });
                            },
                          ),
                        ),
                      ),
                      )
                    ),
              ]
                  ),
            )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PostJob3()),
          );
        },
        backgroundColor:  Colors.blue.shade300,
        child: Icon(Icons.arrow_forward_outlined,color: Colors.white70,),
      ),
    );
  }
}
