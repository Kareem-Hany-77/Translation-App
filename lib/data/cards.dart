import 'package:flutter/material.dart';
import 'package:translation_app/data/animals.dart';
import 'package:translation_app/data/colors.dart';
import 'package:translation_app/data/family.dart';
import 'package:translation_app/data/numbers.dart';
import 'package:translation_app/models/card_model.dart';

final List<CardModel> cards = [
  CardModel(
    image: 'assets/images/app_icons/app_icons_animals.png',
    text: 'Animals',
    color: Colors.red,
    items: animals,
  ),
  CardModel(
    image: 'assets/images/app_icons/app_icons_family.png',
    text: 'Family',
    color: Colors.blue,
    items: familyMembers,
  ),
  CardModel(
    image: 'assets/images/app_icons/app_icons_colors.png',
    text: 'Colors',
    color: Colors.purple,
    items: colors,
  ),
  CardModel(
    image: 'assets/images/app_icons/app_icons_numbers.png',
    text: 'Numbers',
    color: Colors.green,
    items: numbers,
  ),
];