import 'package:flutter/material.dart';

class JobItem {
  final String date;
  final String name;
  final String yr;
  final String lpa;
  final String shift;
  final String location;
  final String r;
  final String w;
  final String time;



  JobItem(
      {
        required this.date,
        required this.name,
        required this.yr,
        required this.lpa,
        required this.shift,
        required this.location,
        required this.r,
        required this.w,
        required this.time
      });
}

class ManageJobsWidget extends StatefulWidget {
  const ManageJobsWidget({super.key});

  @override
  State<ManageJobsWidget> createState() => _ManageJobsWidgetState();
}

final List<JobItem> jobItems =[
JobItem(
    date: '2023-04-24',
    name: 'BitsPan India',
    yr:' 4-5',
    lpa: '4-6',
    shift: 'Day',
    location: 'Gujrat',
    r: '02',
  w: "Work From Office",
  time: "Contractual"
),
  JobItem(date: '2023-04-24',
      name: 'BitsPan India',
      yr:' 3-4',
      lpa: '8-9',
      shift: 'Night',
      location: 'Jaipur',
      r: '12',
      w: "Field Work",
      time: "Full Time"
  ),
];

class _ManageJobsWidgetState extends State<ManageJobsWidget> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceBetween,
      children: jobItems.map((item) {
        return Container(
          margin: EdgeInsets.all(8),
          //width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Posted at :',
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16
                      ),
                    ),
                    Text(item.date,
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(item.name,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey.shade800
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, top: 6, right: 8),
                child: Row(
                  children: [
                    Text('Graduation  |',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700
                      ),
                    ),
                    Text(item.yr,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700
                      ),
                    ),
                    Text(' yr',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700
                      ),
                    ),
                    Spacer(),

                    Text('Rs.',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),
                    ),
                    Text(item.lpa,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),
                    ),
                    Text('LPA',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),
                    ),


                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, top: 4),
                child: Row(
                  children: [
                    Icon(Icons.business_center_outlined, size: 18,
                      color: Colors.grey.shade700,),
                    SizedBox(width: 4,),
                    Text(item.w,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text('|',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text(item.time,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,),
                child: Row(
                  children: [
                    Icon(Icons.business_outlined, size: 18,
                      color: Colors.grey.shade700,),
                    SizedBox(width: 4,),
                    Text(item.shift,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text('Shift',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800
                      ),
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 1.0,
                      // Adjust the scale value to make the switch smaller
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            // Add your logic for the switch action here.
                          });
                        },
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.blue,
                        inactiveTrackColor: Colors.grey,
                        activeThumbImage: AssetImage('assets/on.png'),
                        inactiveThumbImage: AssetImage('assets/off.png'),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 18,
                      color: Colors.grey.shade700,),
                    SizedBox(width: 4,),
                    Text(item.location,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8,bottom: 8),
                child: Row(
                  children: [
                    SizedBox(width: 4,),
                    Text('Responses  -',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    SizedBox(width: 6,),
                    Text(item.r,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    Spacer(),

                    Text('See All',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),


        );
      }).toList(),
    );
  }
}
