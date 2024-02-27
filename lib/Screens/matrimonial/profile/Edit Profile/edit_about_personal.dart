import 'package:flutter/material.dart';

class EditAboutPersonal extends StatefulWidget {
  const EditAboutPersonal({Key? key});

  @override
  State<EditAboutPersonal> createState() => _EditAboutPersonalState();
}

class _EditAboutPersonalState extends State<EditAboutPersonal> {
  List<String> items = ['Choose...', 'Hindi', 'English','Odia','Gujrati'];
  String? selectItem = 'Choose...';



  TextEditingController firstNameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController InstagramController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController CityController = TextEditingController();
  TextEditingController AncestralOriginController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextInputField('First Name', 'Enter Your First Name', firstNameController),
            buildTextInputField('Mobile No', 'Enter Your Mobile No', mobileNoController),
            buildTextInputField('E-mail', 'Enter Your E-mail', emailController),
            buildTextInputField('DOB', 'dd-mm-yyyy', dobController),
            buildTextInputField('Instagram', 'Enter Your Instagram Username', InstagramController),
            buildTextInputField('Address', '', AddressController),
            buildTextInputField('City', '', AddressController),
            buildDropdownMenu(),
          ],
        ),
      ),
    );
  }

  Widget buildTextInputField(String labelText, String hintText, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(fontSize: 15),
        ),
        Container(
          height: 40,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildDropdownMenu() {
    return Column(
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

        SizedBox(height: 10),
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

        SizedBox(height: 10),
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

        SizedBox(height: 10),
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

        SizedBox(height: 10),
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

      ],
    );
  }

}
