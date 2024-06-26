import 'package:booking/screen/register_page.dart';
import 'package:flutter/material.dart';

import 'widget/client/form.dart';

class LoginPageUi extends StatefulWidget {
  const LoginPageUi({super.key});

  @override
  State<LoginPageUi> createState() => _LoginPageUiState();
}

class _LoginPageUiState extends State<LoginPageUi> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.green.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  height: screenHeight / 2.5,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(12)),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double minW = constraints.maxWidth;
                      double minH = constraints.maxHeight;
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "connectez-vous",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                TextFieldForm(
                                    text: 'Email user', controller: username),
                                TextFieldForm(
                                    text: 'Mot de passe', controller: username),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Vous n'avez pas un compte ?",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPageUi(),
                                          )),
                                      child: Text(
                                        "Creer un compte",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: minW,
                                  height: minH * 0.17,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Text(
                                    'Connexion',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )),
            )
          ],
        ));
  }
}
