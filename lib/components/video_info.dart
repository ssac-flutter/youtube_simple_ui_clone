import 'package:flutter/material.dart';

class VideoInfo extends StatelessWidget {
  final String videoInfo;
  final int? maxLines;
  final TextOverflow? overflow;

  const VideoInfo({
    required this.videoInfo,
    this.maxLines,
    this.overflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      videoInfo,
      maxLines: maxLines,
      overflow: overflow,
      style: const TextStyle(color: Colors.white),
    );
  }
}
