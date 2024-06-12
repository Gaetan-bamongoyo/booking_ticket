import 'package:booking/screen/utils/globalColors.dart';
import 'package:booking/screen/widget/button_global.dart';
import 'package:booking/screen/widget/text_form.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  LoginUI({super.key});

  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

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
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,                
                children: [
                  const SizedBox(height: 20,),
                  Text('LOGO',
                  style: TextStyle(
                    color: Globalcolors.mainColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),                    
                      const SizedBox(height: 20,),
                  Text('Se Connecter',
                  style: TextStyle(
                    color: Globalcolors.mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  const SizedBox(height: 20,),
                  TextForm(
                    controller: emailController,
                    text: 'Email', textInputType: TextInputType.emailAddress,
                    obscure: false,),
                    const SizedBox(height: 20,),
                  TextForm(
                    controller: passwordController,
                    text: 'Mot de passe',
                    textInputType: TextInputType.text,
                    obscure: true),
                     const SizedBox(height: 20,),
                     ButtonGobal(),
                    ],
                  )
                  
                  
                
              ),
            ),
          ),

        ),
      );
  }
}