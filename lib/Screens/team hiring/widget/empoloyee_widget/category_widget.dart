import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../screens/empoloyee_screens/applied_screen.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final categoryTitle = ["Applied", "Saved", "Viewed you",];
  final categoryIcon = [
    "assets/ic_desainer.png",
    "assets/ic_coding.png",
    "assets/ic_data.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        categoryTitle.length,
        (index) {
          return
            TextButton(
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AppliedScreen(),
              ),
            );
          },
          child:SizedBox(
            width: (MediaQuery.of(context).size.width - 48 - 48) /
                categoryTitle.length,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage(
                      categoryIcon[index],
                    ),
                    width: 36,
                    height: 36,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  categoryTitle[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          )

          );
        },
      ),
    );
  }
}
