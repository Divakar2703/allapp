import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../components/as_seen_on_tv.dart';

class VideoProducts extends StatefulWidget {
  const VideoProducts({super.key});

  @override
  State<VideoProducts> createState() => _VideoProductsState();
}

class _VideoProductsState extends State<VideoProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(8),
                height: 120,
                width: 210,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: PlayVideoFromNetwork(
                  videoPath:
                  'https://grossry.56testing.club/media/product_video/Productvideo51707549615.mp4',
                )),

            SizedBox(width: 10),
            Container(
                margin: EdgeInsets.all(8),
                height: 120,
                width: 210,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  color: AppColors.primaryColor
                  ,
                ),
                child: PlayVideoFromNetwork(
                  videoPath:
                  'https://grossry.56testing.club/media/product_video/Productvideo161707549556.mp4',
                )),
            SizedBox(width: 10),
            Container(
                margin: EdgeInsets.all(8),
                height: 120,
                width: 210,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: PlayVideoFromNetwork(
                  videoPath:
                  'https://grossry.56testing.club/media/product_video/Productvideo181707549402.mp4',
                )),
            // VideoPlayerWidget(videoPath: 'https://www.youtube.com/watch?v=E7Lr4prCf3E')),
          ],
        ),
      ),
    );
  }
}
