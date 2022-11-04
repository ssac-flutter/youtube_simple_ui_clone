import 'package:flutter/material.dart';

import '../data/video.dart';
import '../screens/video_play_screen.dart';
import 'uploader_banner.dart';
import 'video_aspect_ratio.dart';
import 'video_info.dart';
import 'video_title.dart';

class VideoListComponent extends StatelessWidget {
  final Video video;

  const VideoListComponent({required this.video, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VideoPlayScreen(video: video)),
      ),
      child: Row(
        children: [
          /* 1 */
          Expanded(
            flex: 16,
            child: VideoAspectRatio(videoSrc: video.videoSrc),
          ),

          /* 2 */
          const Spacer(),

          /* 3 */
          Expanded(
            flex: 16,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* 1 */
                  Expanded(
                    child: VideoTitle(
                      videoTitle: video.videoTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  /* 2 */
                  UploaderBanner(
                    uploaderLogoSrc: video.uploaderLogoSrc,
                    uploaderName: video.uploaderName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  /* 3 */
                  VideoInfo(
                    videoInfo: video.videoInfo,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
