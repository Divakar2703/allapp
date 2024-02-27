import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../screens/recruiter_screens/edit_company_description_screen.dart';

class CompanyDescription extends StatelessWidget {
  const CompanyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white70,
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
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 65,
                    ),
                    Icon(
                      Icons.description_outlined,
                      color: Colors.blue.shade300,
                      size: 22,
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'Company Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 4,),
                    IconButton(
                      icon: Icon(
                        Icons.edit_note_sharp,
                        size: 25,
                        color: Colors.blue.shade300,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditDescription()),
                        );
                      },
                    )
                  ],
                ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'fuf  auoif fhafawf',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
