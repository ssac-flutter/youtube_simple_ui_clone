import 'package:flutter/material.dart';
import 'package:youtube_simple_ui_clone/components/ui_component.dart';

import '../components/video_list_component.dart';
import '../data/video.dart';

class VideoListScreen extends StatefulWidget {
  final List<Video> videos;

  const VideoListScreen({required this.videos, Key? key}) : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> with UiComponent {
  @override
  void initState() {
    super.initState();
    setLandscapeOnly();
  }

  @override
  void dispose() {
    super.dispose();
    setOrientationAll();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.videos.length,
      itemBuilder: (BuildContext context, int index) =>
          VideoListComponent(video: widget.videos[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16.0),
    );
  }
}
