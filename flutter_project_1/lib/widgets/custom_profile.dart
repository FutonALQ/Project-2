import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const Icon(Icons.keyboard_arrow_right_sharp)
        ],
      ),
    );
  }
}
