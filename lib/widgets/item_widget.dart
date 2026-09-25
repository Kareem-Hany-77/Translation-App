import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:translation_app/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel itemModel;
  const ItemWidget({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: Image.asset(itemModel.image),
          title: Text(itemModel.title),
          subtitle: Text(itemModel.subtitle),
          trailing: IconButton(
            onPressed: () {
              itemModel.playSound();
            },
            icon: const Icon(Icons.play_arrow, size: 30),
          ),
        ),
      ),
    );
  }
}