import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle:  const TextStyle(
          color: Color.fromARGB(255, 110, 132, 244),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        filled: true,
        fillColor: const Color.fromARGB(255, 43, 54, 107),
      ),
    );
  }
}
