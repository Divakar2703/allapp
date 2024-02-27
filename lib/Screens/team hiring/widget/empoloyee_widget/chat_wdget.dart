import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/route/app_route_name.dart';
import '../../model/Empoloyee_models/job.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recentJobs.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouteName.detailJob,
                arguments: recentJobs[index],
              );
            },
          );
        }
    );
  }
}