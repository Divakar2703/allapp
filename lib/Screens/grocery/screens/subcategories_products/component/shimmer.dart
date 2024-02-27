import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildShimmerGridView() {
  return
    Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 8, // Adjust the number of shimmer items as needed
          itemBuilder: (context, index) {
            return Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(4),

            );
          },
        ),
      ),
    );
}