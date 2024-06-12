import 'package:booking/screen/utils/globalColors.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('LOGO',
                  style: TextStyle(
                    color: Globalcolors.mainColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                  
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}