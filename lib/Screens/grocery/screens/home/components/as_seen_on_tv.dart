import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

import '../../../data/models/response/HomePage/home_page_dynamic_response_model.dart';
import '../../../styles/colors.dart';

class AsSeenOnTV extends StatefulWidget {
  final List<ViewtypeList> viewTypeList;

  AsSeenOnTV({Key? key, required this.viewTypeList}) : super(key: key);

  @override
  State<AsSeenOnTV> createState() => _AsSeenOnTVState();
}

class _AsSeenOnTVState extends State<AsSeenOnTV> {
  List<Data> videoData = [];

  @override
  void initState() {
    super.initState();
    for (var viewType in widget.viewTypeList) {
      if (viewType.viewtype == "video_type") {
        videoData.addAll(viewType.data!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set a fixed height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videoData.length,
        itemBuilder: (BuildContext context, int index) {
          var videoItem = videoData[index];
          return buildColumn(
            videoItem.productName!,
            videoItem.maincatName!,
            videoItem.maincatImage!,
            videoItem.video!,
          );
        },
      ),
    );
  }

  Widget buildColumn(
      String text,
      String name,
      String iconPath,
      String videoPath,
      ) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          PlayVideoFromYoutube(videoPath: videoPath),
          Container(
            padding: EdgeInsets.all(8),
            height: 62,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.25),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Image.asset(iconPath),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlayVideoFromYoutube extends StatefulWidget {
  final String videoPath;

  PlayVideoFromYoutube({Key? key, required this.videoPath}) : super(key: key);

  @override
  State<PlayVideoFromYoutube> createState() => _PlayVideoFromYoutubeState();
}

class _PlayVideoFromYoutubeState extends State<PlayVideoFromYoutube> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.videoPath),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PodVideoPlayer(controller: controller),
    );
  }
}

class PlayVideoFromNetwork extends StatefulWidget {
  final String videoPath;
  PlayVideoFromNetwork({Key? key, required this.videoPath}) : super(key: key);

  @override
  State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(widget.videoPath),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(1.0),
        height: 350,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: PodVideoPlayer(controller: controller),
        ),
      ),
    );
  }
}

