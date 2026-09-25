import 'package:flutter/material.dart';
import 'package:translation_app/widgets/card_widget.dart';
import 'package:translation_app/data/cards.dart';
import 'package:translation_app/widgets/cards_app_bar.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC571),
      appBar: CardsAppBar(),
      body: GridView.builder(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            childAspectRatio: 0.7,
            ),
            itemCount: cards.length, 
            itemBuilder: (context, index) {
              return CardWidget(cardModel: cards[index]);
            }
      ),
    );
  }
}