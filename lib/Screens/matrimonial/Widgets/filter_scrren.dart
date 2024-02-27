import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {


  List<String> items = [ 'Looking For', 'Bride', 'Groom',];
  String? selectItem = 'Looking For';

  List<String> ages = [ 'Age', '18-21', '22-25','26-30','31-35','36-45'];
  String? selectAge = 'Age';

  List<String> res = [ 'Religion', 'Hinduism', 'Islam','Sikhism','Christianity','Buddhism','Jainism','Zoroastrianism'];
  String? selectRe = 'Religion';


  List<String> cas = [ 'Caste', 'Brahmins', 'Kshatriyas','Vaishyas','Shudras'];
  String? selectCa = 'Caste';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.pinkAccent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to the desired color
        ),
        title: Text(
          "",
          style: Theme
              .of(context)
              .textTheme
              .headlineSmall,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD FILTER',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.pinkAccent
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black54),
                      contentPadding: EdgeInsets.only(left: 16), // Adjust left padding
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

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                   // border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                        ).toList(),
                        onChanged: (item) {
                          setState(() {
                            selectItem = item;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down, // You can change this to a white icon of your choice
                          color: Colors.grey.shade700,
                          size: 28,// Set the color to white
                        ),
                      //  dropdownColor: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(8),

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectAge,
                        items: ages.map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                        ).toList(),
                        onChanged: (item) {
                          setState(() {
                            selectAge = item;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down, // You can change this to a white icon of your choice
                          color: Colors.grey.shade700,
                          size: 28,// Set the color to white
                        ),
                        //dropdownColor: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                     // border: Border.all(color: Colors.brown),
                      borderRadius: BorderRadius.circular(8),
                     // color: Colors.brown,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectRe,
                        items: res.map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                        ).toList(),
                        onChanged: (item) {
                          setState(() {
                            selectRe = item;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down, // You can change this to a white icon of your choice
                          color: Colors.grey.shade700,
                          size: 28,// Set the color to white
                        ),
                      //  dropdownColor: Colors.brown,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                 //     border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(8),
                   //   color: Colors.greenAccent,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectCa,
                        items: cas.map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                        ).toList(),
                        onChanged: (item) {
                          // Handle the item selection
                          setState(() {
                            selectCa = item;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey.shade700,
                        ),
                       // dropdownColor: Colors.greenAccent, // Set the dropdown list background color
                      ),
                    ),
                  ),
                ),
              ),






              SizedBox(height: 12,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 48,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   gradient: LinearGradient(
                     colors: [Color(0xFFF86CA7),
                       Color(0xFFF4D444)], // Replace these color codes with your desired colors
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                   ),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.search,color: Colors.white,),
                     Text("Find",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                         color: Colors.white,
                       ),
                     )
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
}
}
