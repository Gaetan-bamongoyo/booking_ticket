import 'package:booking/screen/utils/globalColors.dart';
import 'package:flutter/material.dart';

class ButtonGobal extends StatelessWidget {
  const ButtonGobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Globalcolors.mainColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Globalcolors.mainColor,
              blurRadius: 1,
            )
            ],
        ),
        child: const Text("Se Connecter",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),),
      ),
    );
  }
}