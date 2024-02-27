import 'package:flutter/material.dart';

class EditPrefere extends StatefulWidget {
  const EditPrefere({super.key});

  @override
  State<EditPrefere> createState() => _EditPrefereState();
}

class _EditPrefereState extends State<EditPrefere> {

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
                    flex: 1,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Partner's Age",
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                            ),
                          ),
                        ),


                      ],
                    )
                ),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Partner's Height",
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                            ),
                          ),
                        ),


                      ],
                    )
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
                          'Mother Tongue',
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
            Row(
              children: [
                // 1st Column
                Expanded(
                  flex: 1,
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
                          'Mother Tongue',
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
                        'Working As',
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
                        'Physical Status',
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
                          'Annual Income',
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
                        'Eating Habits',
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
                          'Smoking Habits',
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
                        'Drinking Habits',
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
                          'Religions',
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
                          'Star',
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
                        'Dosh',
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
                          'Country',
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
                        'City',
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
            Text('How I Think.......',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w300
              ),
            ),

            SizedBox(height: 5,),
            Text('1. What do you expect from a partner ?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 5,),
            Text('2. What are your future goals and plans ?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),


            SizedBox(height: 5,),
            Text('3. What do you think about marriage ?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text('About Myself in my words',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  //border: OutlineInputBorder(),
                  border: InputBorder.none,
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
