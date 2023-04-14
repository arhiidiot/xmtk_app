import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final prefixIcon;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: prefixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 0),
        ),
      ),
    );
  }
}
