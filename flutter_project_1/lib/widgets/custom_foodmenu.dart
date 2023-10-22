import 'package:flutter/material.dart';

class CustomFoodMenu extends StatelessWidget {
  const CustomFoodMenu({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.imageForMenu, 
  }) : super(key: key);

  final Color backgroundColor;
  final String text;
  final String imageForMenu;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Image.asset(imageForMenu),
      ],
    );
  }
}
