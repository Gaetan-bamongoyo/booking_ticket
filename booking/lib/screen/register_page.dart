import 'package:flutter/material.dart';

import 'widget/client/form.dart';

class RegisterPageUi extends StatefulWidget {
  const RegisterPageUi({super.key});

  @override
  State<RegisterPageUi> createState() => _RegisterPageUiState();
}

class _RegisterPageUiState extends State<RegisterPageUi> {
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
                  height: screenHeight / 2.1,
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
                                TextFieldForm(
                                    text: 'Confirmer les mot de passer',
                                    controller: username),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Vous avez deja un compte ?",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "Connecter vous",
                                      style: TextStyle(fontSize: 12),
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
                                    'Enregistrer',
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
