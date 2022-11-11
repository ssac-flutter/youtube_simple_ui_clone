import 'package:flutter/material.dart';
import 'package:youtube_simple_ui_clone/components/my_app_bar.dart';

import '../data/video.dart';
import 'video_list_screen.dart';

class MainScreen extends StatelessWidget {
  final List<Video> videos;

  const MainScreen({required this.videos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(
        onTap: () {

        },
      ),
      body: VideoListScreen(videos: videos),
    );
  }
}
