import 'package:flutter/material.dart';

class EditPhysical extends StatefulWidget {
  const EditPhysical({super.key});

  @override
  State<EditPhysical> createState() => _EditPhysicalState();
}

class _EditPhysicalState extends State<EditPhysical> {

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
                          'Height',
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
                          'Weight',
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
                        'Skin Tone',
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
                          'Body Type',
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
            Text('About Your Diet',
            style: TextStyle(
              fontSize: 18,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w300
            ),
            ),

            SizedBox(height: 10,),
            Text(
              'Diet',
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
            Row(
              children: [
                // 1st Column
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smoking',
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
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Drinking',
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
            Text('What You Like',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w300
              ),
            ),

            SizedBox(height: 10,),
            Text(
              'Hobbies',
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
              'Places',
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
              'Movies',
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
