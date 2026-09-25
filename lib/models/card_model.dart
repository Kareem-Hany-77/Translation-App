import 'package:flutter/material.dart';
import 'package:translation_app/models/item_model.dart';

class CardModel {
  final String text;
  final String image;
  final Color color;
  final List<ItemModel> items;

  CardModel({
    required this.text,
    required this.image,
    required this.color,
    required this.items,});
}