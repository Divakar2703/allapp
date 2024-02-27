import 'package:flutter/material.dart';

class SavePosted extends StatelessWidget {
  const SavePosted({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 2, 24, 2),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white70  ,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(
                          Icons.save, // Replace with the desired icon
                          color: Colors.blue.shade300,
                          size: 32, // Adjust the size of the icon as needed
                        ),
                      SizedBox(width: 16,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('0',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Nunito',
                                fontSize: 16,
                              ),),
                          SizedBox(height: 2,),
                            Text('Saved',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Nunito',
                                fontSize: 16,
                              ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16,),
              Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white70  ,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Icon(
                          Icons.format_list_bulleted, // Replace with the desired icon
                          color: Colors.green.shade300,
                          size: 32, // Adjust the size of the icon as needed
                        ),
                      SizedBox(width: 16,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('0',style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),),
                            SizedBox(height: 2,),
                            Text('Posted',style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
