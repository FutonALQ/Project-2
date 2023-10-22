import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color backgroundColor;
  final Color hintTextColor; // Add a hintTextColor property
  final bool isHintTextBold;
  final bool obscureText;
  final IconData? icon; // Add a property to control hint text boldness

  const CustomTextField({
    this.controller,
    required this.hintText,
    required this.backgroundColor,
    required this.hintTextColor,
    this.isHintTextBold = false,
    this.obscureText = false,
    this.icon,
    // Default to not bold
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        textAlign: isHintTextBold ? TextAlign.center : TextAlign.start,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: backgroundColor,
          hintStyle: TextStyle(
            color: hintTextColor,
            fontWeight: isHintTextBold ? FontWeight.bold : FontWeight.normal,
          ),
          prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 0.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
        ),
      ),
    );
  }
}
