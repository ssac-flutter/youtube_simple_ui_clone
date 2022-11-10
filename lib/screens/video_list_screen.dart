import 'package:flutter/material.dart';

import '../components/video_list_component.dart';
import '../data/video.dart';

class VideoListScreen extends StatelessWidget {
  final List<Video> videos;

  const VideoListScreen({required this.videos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: videos.length,
      itemBuilder: (BuildContext context, int index) =>
          VideoListComponent(video: videos[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16.0),
    );
  }
}
