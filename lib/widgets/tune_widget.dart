import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneWidget extends StatelessWidget {
  const TuneWidget({super.key, required this.color, required this.sound});

  final TuneModel color;
  final TuneModel sound;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource(sound.tune));
      },
      child: Container(
        height: 100,
        color: color.color,
      ),
    );
  }
}
