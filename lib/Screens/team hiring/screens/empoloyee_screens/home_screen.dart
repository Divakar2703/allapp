
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../widget/empoloyee_widget/category_widget.dart';
import '../../widget/empoloyee_widget/headline_widget.dart';
import '../../widget/empoloyee_widget/recent_job_widget.dart';
import '../../widget/empoloyee_widget/tips_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {},
          splashRadius: 24,
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Hi Divakar",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 24,
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 48,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.center,
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "Developer, google, etc",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: const [
            /// Tips Widget
            Row(
              children: [
                Text('Tips for You',
                style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
            SizedBox(height: 16),
            TipsWidget(),

            /// Category
            SizedBox(height: 24),
            Row(
              children: [
                Text('Recent Activity',
                  style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            CategoryWidget(),

            /// Recent Job
            SizedBox(height: 24),
            InkWell(
              child: Row(
                children: [
                  Text('Recommended Jobs',
                    style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  // Text('See All',
                  //   style: TextStyle(
                  //       fontSize: 16,
                  //       color: Colors.blue
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 16),
            RecentJobWidget(),

            //bottom navigation
          ],
        ),
      ),
    );
  }
}
