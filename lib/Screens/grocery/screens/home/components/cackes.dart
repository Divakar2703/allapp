import 'package:flutter/material.dart';

class Cakes extends StatefulWidget {
  const Cakes({super.key});

  @override
  State<Cakes> createState() => _CakesState();
}

class _CakesState extends State<Cakes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildColumn("assets/images/grocery_images/cake1.jpeg", 'Plum\nCake'),
          buildColumn("assets/images/grocery_images/cake2.jpeg", 'Apple &\nCarrot Cake'),
          buildColumn("assets/images/grocery_images/cake5.jpeg", 'Almond\nCake'),
          buildColumn("assets/images/grocery_images/cake4.jpeg", 'BlueBerry\nCale'),
          buildColumn("assets/images/grocery_images/cake3.jpeg", 'Caramel\nCake'),
          buildColumn("assets/images/grocery_images/cake2.jpeg", 'Apple &\nCarrot Cake'),
          buildColumn("assets/images/grocery_images/cake5.jpeg", 'Almond\nCake'),
          buildColumn("assets/images/grocery_images/cake4.jpeg", 'BlueBerry\nCale'),
        ],
      ),
    );
  }

  Widget buildColumn(String imagePath, String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
