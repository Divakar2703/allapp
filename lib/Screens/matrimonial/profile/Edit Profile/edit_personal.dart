import 'package:flutter/material.dart';

class EditPersonal extends StatefulWidget {
  const EditPersonal({super.key});

  @override
  State<EditPersonal> createState() => _EditPersonalState();
}

class _EditPersonalState extends State<EditPersonal> {


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

            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/g4.jpeg'), // Add your image path
                            radius: 45, // Adjust the radius to control the size of the avatar
                          ),
                          SizedBox(height: 4,),
                          Container(
                            padding: EdgeInsets.all(4),
                            height: 35,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFF86CA7),
                                  Color(0xFFF4D444)], // Replace these color codes with your desired colors
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(Icons.file_upload_outlined, color: Colors.white, size: 22),
                                  SizedBox(width: 4,),
                                  Text(
                                    'Upload Your Profile',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/g4.jpeg'), // Add your image path
                            radius: 45, // Adjust the radius to control the size of the avatar
                          ),
                          SizedBox(height: 4,),
                          Container(
                            padding: EdgeInsets.all(4),
                            height: 35,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF439CFB),
                                  Color(0xFFF187FB)], // Replace these color codes with your desired colors
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(Icons.file_upload_outlined, color: Colors.white, size: 22),
                                  SizedBox(width: 4,),
                                  Text(
                                    'Upload Your  Picture',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),


            SizedBox(height: 10,),
            Text(
              'First Name',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your First Name',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Last Name',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Last Name',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Mobile',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Mobile ',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'E-mail',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your E-mail ',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'DOB',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'dd-mm-yyyy ',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Mother Toungue',
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
              'Marital Status',
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
              'Number Of Children',
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
              'Instagram',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Instagram Username',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Address',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'City',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'State',
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
              'Nationality',
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
              'Ancestral Origin',
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Origin',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Choose Document',
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
