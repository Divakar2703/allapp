import 'dart:io';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home/components/personal_details_widget.dart';
import '../login/login_screen.dart';
import 'tickets_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  String _imagePath = '';
  String selectedImagePath = ''; // To store the selected image path

  _getUserDetails() async {
    // final SharedPreferences sp = await SharedPreferences.getInstance();
    // userId = sp.getString('id');
    // name = sp.getString('name');
    // mobile = sp.getString('mobile');
    // print('user id profile========$userId');
    //
    // bool profileImgKey = sp.containsKey('profileImg');
    //
    // if (profileImgKey) {
    //   print(' exists in SharedPreferences.');
    //   selectedImagePath = sp.getString('profileImg').toString();
    // } else {
    //   print('does not exist in SharedPreferences.');
    // }
    //
    // Map data = {
    //   "id": userId.toString(),
    // };

    // profilePageViewModel.fetchProfilePageData(data, context);
    // if (kDebugMode) {
    //   print("After fetchung profile data====================== the data viewmodel in hoe page");
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.lightGreen,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 32),
                      child: Column(
                        children: [
                          const Text(
                            'My Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.44,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                double innerHeight = constraints.maxHeight;
                                double innerWidth = constraints.maxWidth;
                                return Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Positioned(
                                      bottom: 24,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: innerHeight * 0.62,
                                        width: innerWidth,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                            ),
                                            Text(
                                              'Devashish',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Nunito',
                                                fontSize: 22,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 22,
                                            ),
                                            const Tickets(),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: 220,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 2,
                                                    blurRadius: 4,
                                                    offset: const Offset(0, 3),
                                                  ),
                                                ],
                                              ),
                                              padding: const EdgeInsets.all(6),
                                              child: InkWell(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        child: const Center(
                                                      child: Text(
                                                        '    Premium member: Approved',
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontFamily: 'Nunito',
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 140,
                                      right: 25,
                                      child: IconButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) => EditProfiler()),
                                          // );
                                          selectImage();
                                        },
                                        icon: const Icon(
                                          Icons.edit,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 24,
                                      left: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          selectImage();
                                        },
                                        child: Center(
                                          child: Container(
                                            child: ClipOval(
                                              child: selectedImagePath == ''
                                                  ? Image.asset(
                                                      'assets/images/sonu.jpg',
                                                      height: 122,
                                                      width: 122,
                                                      fit: BoxFit.fill,
                                                    )
                                                  : Image.file(
                                                      File(selectedImagePath),
                                                      height: 122,
                                                      width: 122,
                                                      fit: BoxFit.fill,
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Wrap(children: [
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'Personal Detail',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: 'Nunito',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                      child: PersonalDetail(
                                        mobile: 'mobile.toString()',
                                        state:
                                            'value.profilePageData.data!.data!.state.toString()',
                                        dob:
                                            ' value.profilePageData.data!.data!.dob.toString()',
                                        city:
                                            'value.profilePageData.data!.data!.city.toString()',
                                        email:
                                            'value.profilePageData.data!.data!.email.toString()',
                                        marital:
                                            'value.profilePageData.data!.data!.martial.toString()',
                                        onDetailsUpdated: _getUserDetails,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  SignIn(),
                                ), //MaterialPageRoute
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Center(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(Icons.logout_outlined),
                                      Text(
                                        'Logout',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Text(
                      'Select Profile Image',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              selectedImagePath =
                                  await selectImageFromGallery();
                              final SharedPreferences sp =
                                  await SharedPreferences.getInstance();
                              sp.setString("profileImg", selectedImagePath);
                              print('Image_Path:-');
                              print(selectedImagePath);
                              if (selectedImagePath != '') {
                                Navigator.pop(context);
                                setState(() {});
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("No Image Selected !"),
                                ));
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/gallery.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  const Text('Gallery'),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              selectedImagePath = await selectImageFromCamera();
                              print('Image_Path:-');
                              print(selectedImagePath);
                              final SharedPreferences sp =
                                  await SharedPreferences.getInstance();
                              sp.setString("profileImg", selectedImagePath);
                              if (selectedImagePath != '') {
                                Navigator.pop(context);
                                setState(() {});
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("No Image Captured !"),
                                ));
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/camera.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  const Text('Camera'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  //
  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
