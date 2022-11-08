import 'package:flutter/material.dart';

import 'video_list_screen.dart';

final AppBar appBar = AppBar(
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
            'assets/images/logos/youtube.png',
            width: 32.0,
            fit: BoxFit.contain,
          ),
        ),
        const Text('YouTube', style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
  ),
  actions: [
    IconButton(onPressed: () {}, icon: const Icon(Icons.ondemand_video)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
  ],
);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: VideoListScreen(),
    );
  }
}
