import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Main Screen/components/main_Navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that binding is initialized.
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF3A5E7B), // Set your desired color here
 //   statusBarIconBrightness: Brightness.light, // Optional: You can set the status bar icon color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
      ),
      home: MainNavigation(),
    );
  }
}
