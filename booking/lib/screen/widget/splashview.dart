import 'dart:async';
import 'package:booking/screen/utils/globalColors.dart';
import 'package:booking/screen/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
    Get.to(const LoginUI());});
    return Scaffold(
      
      backgroundColor: Globalcolors.mainColor,
      body: const Center(
        child: Text("LOGO",
        style: 
        TextStyle(color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
        ),
         ),
      ),
    );
  }
}