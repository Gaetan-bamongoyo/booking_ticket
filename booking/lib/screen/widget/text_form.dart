import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),

      ),
      child: TextFormField(
        decoration: const InputDecoration(              
                hintText: "Email",
                border: InputBorder.none,             
                
              ),
      ),
    );
  }
}