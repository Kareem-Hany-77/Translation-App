import 'package:flutter/material.dart';
import 'package:translation_app/models/card_model.dart';
import 'package:translation_app/models/item_model.dart';
import 'package:translation_app/widgets/item_widget.dart';


class ItemsScreen extends StatelessWidget {
  final List<ItemModel> items;
  final CardModel card;
  const ItemsScreen({super.key, required this.items, required this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(card.text), 
      backgroundColor: card.color,
      foregroundColor: Colors.white,),
      body: Container(
        color: const Color(0xFFFFC571),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ItemWidget(itemModel: items[index]);
            },
          ),
        ),
      ),
    );
  }
}