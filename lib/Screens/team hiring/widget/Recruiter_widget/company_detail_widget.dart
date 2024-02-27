import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/recruiter_model/company_model.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: detail.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        final Company = detail[index];
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
                      Icon(
                        Icons.assignment,
                        color: Colors.blue.shade300,
                        size: 22,
                      ),
                      SizedBox(width: 6),
                     Text(
                          'Company Detail',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company name :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Email Id :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "contact No. :",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      )
                      ),
                      Expanded(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                            Text(
                              Company.name,
                            style: Theme.of(context).textTheme.bodyMedium,
                                 ),
                               SizedBox(
                             height: 8,
                                      ),
                               Text(
                               Company.email,
                                style: Theme.of(context).textTheme.bodyMedium,
                                 ),
                                  SizedBox(
                                   height: 8,
                                    ),
                                  Text(
                                   Company.num,
                                   style: Theme.of(context).textTheme.bodyMedium,
                       ),
                    ],
                  )
                      )
                ],
              ),
              ]
            ),
        ),
        ]
        );
      },
    );
  }
}
