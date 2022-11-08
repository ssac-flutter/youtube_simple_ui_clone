import 'package:flutter/material.dart';

import '../components/uploader_banner.dart';
import '../components/video_aspect_ratio.dart';
import '../components/video_info.dart';
import '../components/video_title.dart';
import '../data/video.dart';
import 'main_screen.dart';

class VideoPlayScreen extends StatelessWidget {
  final Video video;

  const VideoPlayScreen({required this.video, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pop(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoAspectRatio(videoSrc: video.videoSrc),
              const SizedBox(height: 16.0),
              VideoTitle(videoTitle: video.videoTitle),
              const SizedBox(height: 32.0),
              VideoInfo(videoInfo: video.videoInfo),
              const SizedBox(height: 8.0),
              const Divider(color: Colors.grey, thickness: 1.0),
              const SizedBox(height: 8.0),
              UploaderBanner(
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
