// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
// import 'constants.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryLightColor,
//       appBar: AppBar(
//         backgroundColor: kPrimaryColor,
//         leading: Image.asset('assets/logo/bits.png'), // Replace with your left logo
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: SvgPicture.asset(
//               'assets/icons/profile.svg', // Replace with the path to your SVG icon
//               height: 28,
//               width: 28,
//               color: Colors.white, // Customize the color if needed
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import 'constants.dart';
// import 'matrimonial/bottom.dart';
//
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   List<Map<String, dynamic>> categoryItems = [
//     {
//       "label": "Grocery",
//       "image": "assets/images/grocery.png",
//       "color": Colors.green,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.red,
//     },
//     {
//       "label": "Pintu",
//       "image": "assets/images/grocery.png",
//       "color": Colors.green,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.red,
//     },
//     {
//       "label": "Electronics",
//       "image": "assets/electronics_image.png",
//       "color": Colors.blue,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.green,
//     },
//     {
//       "label": "Grocery",
//       "image": "assets/images/grocery.png",
//       "color": Colors.green,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.red,
//     },
//     {
//       "label": "Pintu",
//       "image": "assets/images/grocery.png",
//       "color": Colors.green,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.red,
//     },
//     {
//       "label": "Electronics",
//       "image": "assets/electronics_image.png",
//       "color": Colors.blue,
//       "image2": "assets/images/grocery.png",
//       "color2": Colors.green,
//     },
//     // Add more items as needed
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: categoryItems.length, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(230.0),
//         child: AppBar(
//           title: null,
//           flexibleSpace: Material(
//             elevation: 4,
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(24),
//               bottomLeft: Radius.circular(24),
//             ),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(24),
//                   bottomLeft: Radius.circular(24),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   HomeHeader(),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   SearchField(),
//                   SizedBox(
//                     height: 15,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           bottom: TabBar(
//             isScrollable: true,
//             controller: _tabController,
//             tabs: categoryItems.map((item) => buildCustomTab(item)).toList(),
//             indicator: BoxDecoration(
//               color: Colors.transparent,
//             ),
//           ),
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: categoryItems.map((item) => buildTabItem(item)).toList(),
//       ),
//     );
//   }
//
//   Widget buildCustomTab(Map<String, dynamic> item) {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.symmetric(horizontal: 4),
//           width: 65,
//           height: 65,
//           decoration: BoxDecoration(
//             color: item["color"],
//             shape: BoxShape.circle,
//             border: Border.all(
//               color: Colors.white,
//               width: 1,
//             ),
//           ),
//           child: Stack(
//             children: [
//               Positioned.fill(
//                 child: CircleAvatar(
//                   backgroundColor: Colors.transparent,
//                   child: Image.asset(
//                     item["image"],
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 bottom: 0,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 1,
//                     ),
//                   ),
//                   child: CircleAvatar(
//                     backgroundColor: item["color2"],
//                     radius: 10,
//                     foregroundColor: Colors.white,
//                     child: Image.asset(
//                       item["image2"],
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         Text(
//           item['label'],
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     );
//   }
//
//   Widget buildTabItem(Map<String, dynamic> item) {
//     return Column(
//       children: [
//         // Container(
//         //   margin: EdgeInsets.symmetric(horizontal: 4),
//         //   width: 65,
//         //   height: 65,
//         //   decoration: BoxDecoration(
//         //     color: item["color"],
//         //     shape: BoxShape.circle,
//         //     border: Border.all(
//         //       color: Colors.white,
//         //       width: 1,
//         //     ),
//         //   ),
//         //   child: Stack(
//         //     children: [
//         //       Positioned.fill(
//         //         child: CircleAvatar(
//         //           backgroundColor: Colors.transparent,
//         //           child: Image.asset(
//         //             item["image"],
//         //             fit: BoxFit.fill,
//         //           ),
//         //         ),
//         //       ),
//         //       Positioned(
//         //         right: 0,
//         //         bottom: 0,
//         //         child: Container(
//         //           decoration: BoxDecoration(
//         //             shape: BoxShape.circle,
//         //             border: Border.all(
//         //               color: Colors.white,
//         //               width: 1,
//         //             ),
//         //           ),
//         //           child: CircleAvatar(
//         //             backgroundColor: item["color2"],
//         //             radius: 10,
//         //             foregroundColor: Colors.white,
//         //             child: Image.asset(
//         //               item["image2"],
//         //               fit: BoxFit.fill,
//         //             ),
//         //           ),
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         // SizedBox(height: 10),
//
//         // Text(
//         //   item['label'] == 'Grocery'
//         //       ? 'Hello Grocery'
//         //       : (item['label'] == 'Electronics' ? 'Hello Electronics' : 'Custom Content for ${item["label"]}'),
//         //   style: TextStyle(fontSize: 20),
//         // ),
//
//         buildContentWidget(item['label']),
//
//       ],
//     );
//   }
//
//   Widget buildContentWidget(String label) {
//     if (label == 'Grocery') {
//       return HomeHeader();
//     } else if (label == 'Electronics') {
//       return Bottom();
//     } else {
//       return Text(
//         'Custom Content for $label',
//         style: TextStyle(fontSize: 20),
//       );
//     }
//   }
//
//
//
//   Widget HomeHeader() {
//     // Your HomeHeader widget implementation
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.white, // Set your desired background color here
//           radius: 25, // Set the radius of the avatar
//           foregroundColor: Colors.white, // Set the color of the border
//           child: ClipOval(
//             child: Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: Colors.white70, // Set the color of the border
//                   width: 1.7, // Set the width of the border
//                 ),
//               ),
//               child: Image.asset(
//                 "assets/logo/bits.png", // Replace with your image asset path
//                 fit: BoxFit.cover, // Adjust the BoxFit property as needed
//               ),
//             ),
//           ),
//         ),
//
//
//         CircleAvatar(
//           backgroundColor: Colors.white, // Set your desired background color here
//           radius: 25, // Set the radius of the avatar
//           foregroundColor: Colors.white, // Set the color of the border
//           child: ClipOval(
//             child: Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: Colors.white70, // Set the color of the border
//                   width: 1.7, // Set the width of the border
//                 ),
//               ),
//               child: SvgPicture.asset(
//                 'assets/icons/profile.svg', // Replace with the path to your SVG icon
//                 height: 28,
//                 width: 28,
//                 color: Colors.black, // Customize the color if needed
//               ),
//             ),
//           ),
//         ),
//
//
//       ],
//     );
//   }
//
//   Widget SearchField() {
//     // Your SearchField widget implementation
//     return   Container(
//       padding: EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: 45.0,
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(120.0),
//                 border: Border.all(
//                   color: Colors.grey.shade700,
//                 ),
//               ),
//               child: Row(
//                 children: [
//                   SvgPicture.asset(
//                     'assets/icons/search (1).svg',
//                     color: Colors.grey.shade700,
//                     height: 20.0,
//                     width: 20.0,
//                   ),
//                   SizedBox(width: 10,),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search BitsPan...',
//                         hintStyle: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: Colors.grey.shade700,
//                         ),
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: 10),
//           InkWell(
//             onTap: () {
//               // Handle filter button tap
//             },
//             child: Container(
//               padding: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 color: kPrimaryColor,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               child: SvgPicture.asset(
//                 'assets/icons/filter.svg',
//                 color: Colors.white,
//                 height: 24.0,
//                 width: 24.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class HelloGroceryWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Hello Grocery',
//       style: TextStyle(fontSize: 20),
//     );
//   }
// }
//
// class HelloElectronicsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Hello Electronics',
//       style: TextStyle(fontSize: 20),
//     );
//   }
// }
//
