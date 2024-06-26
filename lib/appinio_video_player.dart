import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

/// package appinio video player

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({super.key});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    // initVideoPlayer();
  }

  void initVideoPlayer() {
    videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse("https://www.youtube.com/watch?v=th1Tmi9EimM"))
      ..initialize().then((value) {
        setState(() {});
      });

    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: videoPlayerController);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('lsajfd'),
          // CustomVideoPlayer(
          //     customVideoPlayerController: _customVideoPlayerController)
        ],
      ),
    );
  }
}
