import 'package:flutter/material.dart';

class VideoAspectRatio extends StatelessWidget {
  final String videoSrc;

  const VideoAspectRatio({required this.videoSrc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Image.asset('assets/images/$videoSrc', fit: BoxFit.contain),
    );
  }
}
