import 'package:flutter/material.dart';

class Mytextfilde extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const Mytextfilde(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 10, 1, 1))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: const Color.fromRGBO(238, 238, 238, 0.322),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
