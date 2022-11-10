import 'package:flutter/material.dart';

import '../components/ui_component.dart';
import '../data/video.dart';
import 'main_screen.dart';

class VideoPlayScreen extends StatelessWidget with UiComponent {
  final Video video;

  const VideoPlayScreen({required this.video, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MainScreen.appBar,
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pop(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              setVideo16To9(videoSrc: video.videoSrc),
              const SizedBox(height: 16.0),
              setVideoTitle(videoTitle: video.videoTitle),
              const SizedBox(height: 32.0),
              setVideoInfo(videoInfo: video.videoInfo),
              const SizedBox(height: 8.0),
              const Divider(color: Colors.grey, thickness: 1.0),
              const SizedBox(height: 8.0),
              setUploaderBanner(
                uploaderLogoSrc: video.uploaderLogoSrc,
                uploaderName: video.uploaderName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
