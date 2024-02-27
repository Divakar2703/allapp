import 'package:all_app/Screens/grocery/screens/search_page/search_page_screen.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  SearchPageScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGreen,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "Search Product",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            // Add suffix icon here if needed
            // SizedBox(
            //   width: 48,
            //   height: 48,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: primaryColor,
            //       shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(12)),
            //       ),
            //     ),
            //     onPressed: () {},
            //     child: Icon(Icons.filter_list_outlined),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
