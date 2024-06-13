import 'package:booking/screen/utils/globalColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          
          alignment: Alignment.center,
          child: Text("Connectez-vous avec",
          style: TextStyle(
            color: Globalcolors.textColor,
            fontWeight: FontWeight.w600,
          ),),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width *0.8,
          child: Row(
            children: [
             
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 0,
                      )
                    ]
                
                   ),
                  child:FaIcon(
                    FontAwesomeIcons.google,
                    size: 20.0,
                   
                          ),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 0,
                      )
                    ]
                
                   ),
                  child:FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 20.0,
                   
                          ),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 0,
                      )
                    ]
                
                   ),
                  child:FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 20.0,
                   
                          ),
                ),
              )
            ],
          
          ),
        ),
      ],
    );
  }
}