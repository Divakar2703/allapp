import 'package:all_app/Screens/grocery/data/constants/app_constants_value.dart';
import 'package:all_app/Screens/grocery/data/models/request/login/GetUserIdRequestModel.dart';
import 'package:all_app/Screens/grocery/helpers/toast.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  static String verify = '';
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  LoginViewModel loginViewModel = LoginViewModel();
  TextEditingController nameControllers = TextEditingController();
  TextEditingController mobileControllers = TextEditingController();
  bool isLoading = false;


  void validateInputs() {
    setState(() {
      isLoading = true; // Set isLoading to true when validating inputs
    });

    loginViewModel.mobileNo = mobileControllers.text.toString();
    final String mobile = mobileControllers.text.trim();
    final String name = nameControllers.text.trim();

    if (mobile.isNotEmpty && name.isNotEmpty && mobile.length >= 10) {
      doRegisterGetUserId();
    } else {
      AppToast.showToast("Please provide valid inputs.");
      setState(() {
        isLoading = false; // Set isLoading to false when validation fails
      });
    }
  }

  void doRegisterGetUserId(){
    final getUserIdRequestModel = GetUserIdRequestModel(
      name: nameControllers.text.toString(),
      phone: mobileControllers.text.toString(),
      countrycode: Constants.countryCode
    );
    loginViewModel.fetchLoginPageData(getUserIdRequestModel, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: AppColors.lightGreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.png',
                  height: 200,
                  width: 250, // Replace with your image path
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 0, 24, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                  child:
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      // Adjust the value as needed
                      border: Border.all(color: Colors.black),
                      color: Colors.transparent,
                    ),
                    child:
                    TextField(
                      controller: nameControllers,
                      decoration: InputDecoration(
                        labelText: 'Enter User name',
                        labelStyle: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          // Add the icon here
                          Icons.person_outlined,
                          // You can change 'Icons.phone' to the desired icon
                          color: Colors.grey.shade800,
                        ),
                        border: InputBorder.none,
                        // Remove the default border
                        contentPadding:
                        EdgeInsets.all(10), // Add padding to the text field
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      // Adjust the value as needed
                      border: Border.all(color: Colors.black),
                      color: Colors.transparent,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: mobileControllers,
                      decoration: InputDecoration(
                        labelText: 'Enter Your Mobile number',
                        labelStyle: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          // Add the icon here
                          Icons.call,
                          // You can change 'Icons.phone' to the desired icon
                          color: Colors.grey.shade800,
                        ),
                        border: InputBorder.none,
                        // Remove the default border
                        contentPadding:
                        EdgeInsets.all(10), // Add padding to the text field
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                InkWell(
                  onTap: () async {
                   validateInputs();
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              stops: [0.4, 0.8],
                              colors: [
                                Colors.green,
                                Colors.green,
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Send OTP",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 30),
                              Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 16,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("We will send 6 digit OTP on your entered \nMobile Number",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: CircularProgressIndicator(color: AppColors.primaryColor,),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
