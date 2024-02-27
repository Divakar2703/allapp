import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../styles/colors.dart';

class SearchPageSearchField extends StatelessWidget {
  final Function(String) onTextChanged;

  const SearchPageSearchField({Key? key, required this.onTextChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Form(
      child:
      TextFormField(
        onChanged: onTextChanged,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          hintStyle: TextStyle(color: Colors.green),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: searchOutlineInputBorder,
          focusedBorder: searchOutlineInputBorder,
          enabledBorder: searchOutlineInputBorder,
          hintText: "Search Product",
          prefixIcon: Icon(Icons.search),
          // suffixIcon: SizedBox(
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
          //  //   child: SvgPicture.asset("assets/icons/close.svg",),
          //     child: Icon(Icons.filter_list_outlined),
          //   ),
          // ),
        ),
      ),
    );
  }
}

const searchOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);
