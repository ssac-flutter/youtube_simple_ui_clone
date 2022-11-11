import 'package:flutter/material.dart';
import 'package:youtube_simple_ui_clone/repository/video_repository.dart';

import 'data/video.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final videoRepository = VideoRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube simple UI clone',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(videos: videoRepository.getVideos()),
    );
  }
}
