import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    required this.text,
    required this.controller,
    super.key,
  });
  final String text;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
          controller: controller,
          cursorColor: Colors.black,
          // style: GoogleFonts.raleway(color: Colors.black45, fontSize: 15),
          decoration: InputDecoration(
            // prefixIcon: const Icon(Icons.add),
            hintText: text,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          )),
    );
  }
}
