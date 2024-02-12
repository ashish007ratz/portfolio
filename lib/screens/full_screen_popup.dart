import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoPlayer extends StatelessWidget {
  final String url;
   VideoPlayer(this.url);
  // Create a [Player] to control playback.
  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);
  @override
  Widget build(BuildContext context) {
    MediaKit.ensureInitialized();
    player.open(Media(url));

    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.85),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 40,
              width: 400,
              // Use [Video] widget to display video output.
              child: Video(controller: controller),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon: Icon(Icons.close ,size: 30, color: Colors.black,),color: Colors.white),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
  }

}
