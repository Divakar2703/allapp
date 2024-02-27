import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PersonalDetail extends StatefulWidget {
  final String mobile;
  final String state;
  final String dob;
  final String city;
  final String email;
  final String marital;
  final VoidCallback? onDetailsUpdated;
  PersonalDetail({super.key, required this.mobile, required this.state, required this.dob, required this.city, required this.email, required this.marital, this.onDetailsUpdated});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: detailr.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        final Info = detailr[index];
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
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      const Icon(
                        Icons.dashboard,
                        color: Colors.black,
                        size: 22,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                          'Details',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                   const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.edit_note_sharp,
                          size: 25,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => EditDetails(
                          //     onDetailsUpdated: widget.onDetailsUpdated,
                          //     dob: widget.dob,
                          //     city: widget.city,
                          //     email: widget.email,
                          //     marital: widget.marital,
                          //   )),
                          // );
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Mobile No. :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '+91-9079208775',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Email Id :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'abc@gmail.com',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "DOB :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                             '17/11/1998',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Marital Status :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                             'Single',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "City :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Chittorgarh',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
class Info{
  final String Mobile;
  final String Email;
  final String DOB;
  final String Marital;
  final String Address;

  Info({
    required this.Mobile,
    required this.Email,
    required this.DOB,
    required this.Marital,
    required this.Address,
  });
}

final detailr =[
  Info(
      Mobile: 'Financial services',
      Email: 'add detail',
      DOB: '676659760',
      Marital: 'http/sdgkhf.com',
      Address:'Mg Road Gurugram'
  ),
];