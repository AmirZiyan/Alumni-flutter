import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
        required this.controller,
        required this.hintText,
        required this.obscureText, required String? Function(dynamic value) validator}); // Constructor with optional key parameter

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0), // Setting padding
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: controller,
          obscureText: obscureText,

          decoration: InputDecoration(
              isDense: true,
              // Setting decoration for the TextField
              enabledBorder: const OutlineInputBorder(
                // Border when TextField is enabled
                borderSide:
                BorderSide(color: Colors.grey), // Color of the border
              ),
              focusedBorder: const OutlineInputBorder(
                // Border when TextField is focused
                borderSide: BorderSide(color: Colors.grey), // Color of the border
              ),
              fillColor: Colors.white,
              // Background color of the TextField
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey[600],
              ) // Whether the TextField should be filled with color
          ),
        ),
      ),
    );
  }
}
