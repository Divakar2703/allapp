// import 'package:all_app/Screens/grocery/styles/colors.dart';
// import 'package:all_app/Screens/grocery/viewmodels/view_model_home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'init_screen.dart';
//
// class MyApp extends StatefulWidget {
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: AppColors.statusBarColor, // Set your desired status bar color
//     ));
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (_) => HomePageViewModel()),
//           ChangeNotifierProvider(create: (_) => SubCategoryViewModel()),
//           ChangeNotifierProvider(create: (_) => WishListPageViewModel()),
//           ChangeNotifierProvider(create: (_) => SubCategoryViewModel()),
//         ],
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           builder: FToastBuilder(),
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch:Colors.purple,
//           ),
//           home: SplashScreen(),
//         ),
//       );
//   }
// }
//
//
