import 'package:flutter/material.dart';
import 'package:translation_app/models/card_model.dart';
import 'package:translation_app/screens/items_screen.dart';

class CardWidget extends StatelessWidget {
  final CardModel cardModel;
  const CardWidget({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ItemsScreen(items: cardModel.items, card: cardModel),
          ),
        );
      },
      child: Card(
        color: cardModel.color,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(cardModel.image, width: 100),
            const SizedBox(height: 0),
            Text(
              cardModel.text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}