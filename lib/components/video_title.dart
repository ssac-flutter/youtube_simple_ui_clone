import 'package:flutter/material.dart';

class VideoTitle extends StatelessWidget {
  final String videoTitle;
  final int? maxLines;
  final TextOverflow? overflow;

  const VideoTitle({
    required this.videoTitle,
    this.maxLines,
    this.overflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      videoTitle,
      maxLines: maxLines,
      overflow: overflow,
      style: const TextStyle(fontSize: 20.0, color: Colors.white),
    );
  }
}
