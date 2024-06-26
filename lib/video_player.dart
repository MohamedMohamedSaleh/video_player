import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VedioPlayerYoutup extends StatefulWidget {
  const VedioPlayerYoutup({super.key});

  @override
  State<VedioPlayerYoutup> createState() => _VedioPlayerYoutupState();
}

class _VedioPlayerYoutupState extends State<VedioPlayerYoutup> {
  final videoUrl =
      "https://www.youtube.com/watch?v=tm3EehWTam4&pp=ygU92YLYr9in2YUg2KfZhNmD2YQg2K3ZhtmF2YrZhCDZhtmF2LTZiiDYqNmH2YTZitmEINin2YTYs9in2YPZhg%3D%3D";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "VedioPlayerYoutup",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You Are Malaky!",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Theme.of(context).primaryColor.withOpacity(.9),
              handleColor: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
