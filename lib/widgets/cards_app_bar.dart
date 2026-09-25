import 'package:flutter/material.dart';

class CardsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CardsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFF7575),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Image.asset('assets/images/app_icons/app_icons_spain.png', width: 50),
          Text(
            'Hola Mundo',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Image.asset('assets/images/app_icons/app_icons_spain.png', width: 50),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}