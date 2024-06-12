import 'package:booking/screen/utils/globalColors.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key, required this.controller, required this.text, required this.textInputType, required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Globalcolors.mainColor,
            blurRadius: 1,
          )
          ],

      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration:  InputDecoration(              
                hintText: text,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
                hintStyle: TextStyle(
                  height: 1,
                )             
                
              ),
      ),
    );
  }
}