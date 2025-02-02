import 'package:flutter/material.dart';
import 'package:spotify_clone/models/music_player_model.dart';

class CustomPlayersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final musicPlayerModel = MusicPlayerModel(
        albumTitle: 'Album Title',
        songTitle: 'Song Title',
        bgColor: Colors.black,
        mHeight: 60);

    return Container(
      height: mHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: bgColor),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [Container(width: 40, height: 40, decoration: BoxDecoration(borderRadius: ),)],
            )
          ],
        ),
      ),
    );
  }
}
