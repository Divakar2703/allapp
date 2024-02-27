// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../../widget/Recruiter_widget/company_detail_widget.dart';
// import '../../widget/Recruiter_widget/save_posted_widget.dart';
// import 'edit_peofiler_screen.dart';
//
// class Profiler extends StatefulWidget {
//   const Profiler({super.key});
//
//   @override
//   State<Profiler> createState() => _ProfilerState();
// }
//
// class _ProfilerState extends State<Profiler> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 0,
//         backgroundColor: Theme.of(context).primaryColor,
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//         centerTitle: true,
//         title: Row(
//           children: [
//             Text(
//                 "  My Account",
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.white70
//                 )
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             splashRadius: 24,
//             icon: const Icon(
//               Icons.notifications_none_rounded,
//               color: Colors.white70,
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         color: Theme.of(context).primaryColor,
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundImage: AssetImage(
//                             'assets/sonu.jpg'), // Add your image asset
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Hr.Mahesh",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 18,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "5597953301",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w300,
//                                   fontSize: 14,
//                                   color: Colors.white70),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       IconButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => EditProfiler()),
//                           );
//                         },
//                         splashRadius: 24,
//                         icon: const Icon(
//                           Icons.edit_note_sharp,
//                           color: Colors.white,
//                           size: 35,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     width: 185,
//                     decoration: BoxDecoration(
//                       color: Colors.greenAccent.shade100,
//                       borderRadius: BorderRadius.circular(15),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.1),
//                           spreadRadius: 2,
//                           blurRadius: 4,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     padding: EdgeInsets.all(6),
//                     child: Row(
//                       children: [
//                         Container(
//                             child:
//                           Center(
//                               child: Text(
//                                 'Company status: Approved',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black
//                             ),
//                                 ),
//                                 ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//
//             Expanded(
//                 child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(27),
//                           topRight: Radius.circular(27)),
//                     ),
//                     child: SingleChildScrollView(
//                       padding: const EdgeInsets.all(11),
//                       child: Column(
//                           children:  [
//
//                        // ProfileDetailsWidget(),
//                         //    SizedBox(height: 24),
//                             CompanyWidget(),
//                             SizedBox(height: 24),
//                             SavePosted(),
//
//                           ]
//                       ),
//                     )
//                 )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:all_app/Screens/team%20hiring/screens/recruiter_screens/post_job_edit1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../widget/Recruiter_widget/company_address_widget.dart';
import '../../widget/Recruiter_widget/company_description_widget.dart';
import '../../widget/Recruiter_widget/company_detail_widget.dart';
import '../../widget/Recruiter_widget/company_info_widget.dart';
import '../../widget/Recruiter_widget/save_posted_widget.dart';
import 'edit_peofiler_screen.dart';
import 'manage_jobs_screen.dart';

class Profiler extends StatefulWidget {
  const Profiler({super.key});

  @override
  State<Profiler> createState() => _ProfilerState();
}

class _ProfilerState extends State<Profiler> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade300,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
              child: Column(
                children: [
                  Text(
                    'My Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  Container(
                    height: height * 0.41,
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
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      'Hr. Mahesh',
                                      style: TextStyle(
                                        color: Colors.blue.shade300,
                                        fontFamily: 'Nunito',
                                        fontSize: 22,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '9055435923',
                                          style: TextStyle(
                                            color:
                                            Colors.blue.shade300,
                                            fontFamily: 'Nunito',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.priority_high_sharp,
                                         color: Colors.blue.shade300,
                                        ),
                                        Text(
                                          'dffasflgg',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontFamily: 'Nunito',
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    SavePosted(),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      width: 210,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.all(6),
                                      child: Row(
                                        children: [
                                          Container(
                                              child: Center(
                                            child: Text(
                                              '    Company status: Approved',
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
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 140,
                              right: 25,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfiler()),
                                  );
                                },
                                icon: Icon(
                                  AntDesign.edit,
                                  color:  Colors.blue.shade300,
                                  size: 25,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 24,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'assets/sonu.jpg'), // Add your image asset
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
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
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Company',
                              style: TextStyle(
                                color:  Colors.blue.shade300,
                                fontSize: 24,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            Divider(
                              thickness: 2.5,
                            ),
                            Column(
                              children: [
                                CompanyWidget(),
                                SizedBox(
                                  height: 32,
                                ),
                                CompanyDescription(),

                                CompanyInfo(),
                                CompanyAddress(),
                                SizedBox(
                                  height: 16,
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                   SizedBox(height: 8,),
                   Wrap(
                     children: [
                       InkWell(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => ManageJobScreen()),
                           );
                         },
                         child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                           boxShadow: [
                           ]
                         ),
                         padding: EdgeInsets.all(8),
                         child: Column(
                           children: [
                          Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Icon(
                                   Icons.article_outlined,
                                   color: Colors.black,
                                   size: 22,
                                 ),
                                 SizedBox(width: 6),
                                 Expanded(
                                   child: Text(
                                     'Managed jobs',
                                     style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 17,
                                       color: Colors.black,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             Divider(
                               thickness: 1.5,
                             ),
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => PostJob1()),
                                 );
                               },
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(
                                     Icons.post_add,
                                     color: Colors.black,
                                     size: 22,
                                   ),
                                   SizedBox(width: 6),
                                   Expanded(
                                     child: Text(
                                       'Post Jobs',
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 17,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             Divider(
                               thickness: 1.5,
                             ),
                             InkWell(
                               onTap: (){
                                 showDialog(
                                     context: context,
                                     builder: (context) => AlertDialog(
                                       actions: [
                                         TextButton(
                                             onPressed: (){
                                               Navigator.of(context).pop();
                                             },
                                             child: Text('Close',
                                             style: TextStyle(
                                               color:Colors.black
                                             ),
                                             )
                                         )
                                       ],
                                       title: Center(child: Text('Help desk',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 20
                                       ),
                                       )),
                                       contentPadding: EdgeInsets.all(20),
                                       content: Column(
                                         mainAxisSize: MainAxisSize.min, // Use MainAxisSize.min to make the content compact
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Row(
                                             children: [
                                               Text('Contact num:',
                                               style: TextStyle(
                                                 color: Colors.black87,
                                                 fontSize:16,
                                                 fontWeight: FontWeight.w400
                                               ),
                                               ),
                                               SizedBox(width: 5,),
                                               Text('590439434',
                                                 style: TextStyle(
                                                     color: Colors.blue.shade300,
                                                     fontSize:16,
                                                     fontWeight: FontWeight.w500
                                                 ),
                                               ),
                                             ],
                                           ),
                                           SizedBox(height: 8,),
                                           Row(
                                             children: [
                                               Text('Email Id:',
                                                 style: TextStyle(
                                                     color: Colors.black87,
                                                     fontSize:16,
                                                     fontWeight: FontWeight.w400
                                                 ),
                                               ),
                                               SizedBox(width: 5,),
                                               Text('xyz1233@gmail.com',
                                                 style: TextStyle(
                                                     color: Colors.blue.shade300,
                                                     fontSize:16,
                                                     fontWeight: FontWeight.w500
                                                 ),
                                               ),
                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                 );
                               },
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(
                                     Icons.help_center_outlined,
                                     color: Colors.black,
                                     size: 22,
                                   ),
                                   SizedBox(width: 6),
                                   Expanded(
                                     child: Text(
                                       'Help desk',
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 17,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             Divider(
                               thickness: 1.5,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Icon(
                                   Icons.star_rate_outlined,
                                   color: Colors.black,
                                   size: 22,
                                 ),
                                 SizedBox(width: 6),
                                 Expanded(
                                   child: Text(
                                     'Rate us',
                                     style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 17,
                                       color: Colors.black,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             Divider(
                               thickness: 1.5,
                             ),
                             Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(
                                     Icons.logout_outlined,
                                     color:  Colors.blue.shade300,
                                     size: 22,
                                   ),
                                   SizedBox(width: 6),
                                   Expanded(
                                     child: Text(
                                       'LogOut',
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 17,
                                         color:  Colors.blue.shade300,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                           ],
                         ),
                     ),
                       ),]
                   ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
