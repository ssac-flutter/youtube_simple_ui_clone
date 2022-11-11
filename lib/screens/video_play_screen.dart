import 'package:flutter/material.dart';
import 'package:youtube_simple_ui_clone/components/my_app_bar.dart';
import 'package:youtube_simple_ui_clone/repository/video_repository.dart';
import 'package:youtube_simple_ui_clone/screens/main_screen.dart';

import '../components/ui_component.dart';
import '../data/video.dart';

class VideoPlayScreen extends StatefulWidget {
  final Video video;

  VideoPlayScreen({required this.video, Key? key}) : super(key: key);

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> with UiComponent {
  final videoRepository = VideoRepository();

  @override
  void initState() {
    super.initState();
    setOrientationAll();
  }

  @override
  void dispose() {
    setLandscapeOnly();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(
        onTap: () {
          print('onTap');
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(
                videos: videoRepository.getVideos(),
              ),
            ),
            (route) => false,
          );
        },
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pop(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              setVideo16To9(videoSrc: widget.video.videoSrc),
              const SizedBox(height: 16.0),
              setVideoTitle(videoTitle: widget.video.videoTitle),
              const SizedBox(height: 32.0),
              setVideoInfo(videoInfo: widget.video.videoInfo),
              const SizedBox(height: 8.0),
              const Divider(color: Colors.grey, thickness: 1.0),
              const SizedBox(height: 8.0),
              setUploaderBanner(
                uploaderLogoSrc: widget.video.uploaderLogoSrc,
                uploaderName: widget.video.uploaderName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
