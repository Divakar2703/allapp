import 'package:flutter/material.dart';

class EditEducation extends StatefulWidget {
  const EditEducation({super.key});

  @override
  State<EditEducation> createState() => _EditEducationState();
}

class _EditEducationState extends State<EditEducation> {

  List<String> items = ['Choose...', 'Hindi', 'English','Odia','Gujrati'];
  String? selectItem = 'Choose...';


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Highest Qualification',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 40,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectItem,
                  items: items.map((gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(
                        gender,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (gender) {
                    setState(() {
                      selectItem = gender;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Working With',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 40,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectItem,
                  items: items.map((gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(
                        gender,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (gender) {
                    setState(() {
                      selectItem = gender;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Working As',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Position',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Professional Area',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Professional Area',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Annual Salary',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 40,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectItem,
                  items: items.map((gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(
                        gender,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (gender) {
                    setState(() {
                      selectItem = gender;
                    });
                  },
                ),
              ),
            ),


            SizedBox(height: 10,),
            Text(
              'Organisation',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Organisation Name',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink,
                      Colors.pinkAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )







          ],
        ),
      ),
    );
  }
}
