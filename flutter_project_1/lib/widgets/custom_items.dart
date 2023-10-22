import 'package:flutter/material.dart';

class CustomItems extends StatefulWidget {
  const CustomItems({Key? key, required this.icon, required this.text})
      : super(key: key);

  final Icon icon;
  final String text;

  @override
  _CustomItemsState createState() => _CustomItemsState();
}

class _CustomItemsState extends State<CustomItems> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
      },
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:
                  clicked ? const Color(0xFFD35400) : const Color(0xFFECF0F1),
            ),
            child: Center(child: widget.icon),
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
