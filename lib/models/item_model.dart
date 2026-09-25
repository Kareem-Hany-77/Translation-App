import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String image;
  final String title;
  final String subtitle;
  final String sound;

  ItemModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.sound,
  });

  void playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}