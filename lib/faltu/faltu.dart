import 'package:flutter/material.dart';



class MyTabBarScreen extends StatefulWidget {
  @override
  _MyTabBarScreenState createState() => _MyTabBarScreenState();
}

class _MyTabBarScreenState extends State<MyTabBarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Map<String, dynamic>> categoryItems = [
    {
      "label": "Grocery",
      "image": "assets/images/grocery.png",
      "color": Colors.green,
      "image2": "assets/images/grocery.png",
      "color2": Colors.red,
    },
    {
      "label": "Electronics",
      "image": "assets/electronics_image.png",
      "color": Colors.blue,
      "image2": "assets/images/grocery.png",
      "color2": Colors.green,
    },
    // Add more items as needed
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categoryItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: categoryItems.map((item) => buildCustomTab(item)).toList(),
          indicator: BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categoryItems.map((item) => buildTabItem(item)).toList(),
      ),
    );
  }

  Widget buildCustomTab(Map<String, dynamic> item) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: item["color"],
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    item["image"],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: item["color2"],
                    radius: 10,
                    foregroundColor: Colors.white,
                    child: Image.asset(
                      item["image2"],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          item['label'],
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildTabItem(Map<String, dynamic> item) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: item["color"],
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    item["image"],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: item["color2"],
                    radius: 10,
                    foregroundColor: Colors.white,
                    child: Image.asset(
                      item["image2"],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Custom Content for ${item["label"]}',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
