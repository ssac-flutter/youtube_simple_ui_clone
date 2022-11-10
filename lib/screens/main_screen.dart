import 'package:flutter/material.dart';

import '../data/video.dart';
import '../main.dart';
import 'video_list_screen.dart';

const double aspectRatio16To9 = 16 / 9;

class MainScreen extends StatelessWidget {
  static final AppBar appBar = AppBar(
    backgroundColor: Colors.black,
    elevation: 0.0,
    titleSpacing: 0.0,
    title: GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              MyApp.appLogoSrc,
              width: 32.0,
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            MyApp.appName,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: MyApp.icons[0]),
      IconButton(onPressed: () {}, icon: MyApp.icons[1]),
      IconButton(onPressed: () {}, icon: MyApp.icons[2]),
    ],
  );

  final List<Video> videos;

  const MainScreen({required this.videos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: VideoListScreen(videos: videos),
    );
  }
}
