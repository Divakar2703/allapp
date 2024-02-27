import 'package:flutter/material.dart';

class EditFamily extends StatefulWidget {
  const EditFamily({super.key});

  @override
  State<EditFamily> createState() => _EditFamilyState();
}

class _EditFamilyState extends State<EditFamily> {

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
              "Father's Name",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Father's Name",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              "Father's Occupation",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Father's Occupation",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              "Mother's Name",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Mother's Name",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              "Mother's Occupation",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Mother's Occupation",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                // 1st Column
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sisters',
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
                    ],
                  ),
                ),
                SizedBox(width: 10), // Add some space between columns
                Expanded(
                  flex: 1,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Marrid',
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
                      ]
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                // 1st Column
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brothers',
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
                    ],
                  ),
                ),
                SizedBox(width: 10), // Add some space between columns
                Expanded(
                  flex: 1,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Marrid',
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
                      ]
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),
            Text(
              'Family Value',
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
              'Family Status',
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
              'Family Type',
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
            Text('Religion & Astrology',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w300
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Religion',
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
              'Caste',
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
              "Gotra",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Gotra",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Zodiac/Rashi',
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
              "Star/Nakshatra",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Star",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Mangalik',
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
