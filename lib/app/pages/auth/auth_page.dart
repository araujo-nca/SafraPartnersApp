import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/pages/intro/intro_page.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';

import '../contract/contract_one.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorPalette.primary,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Container()),
                    Image.asset('assets/logos/safra_partners.png'),
                    const SizedBox(height: 25),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                          color: ColorPalette.light,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      // onChanged: _signInController.client.setEmail,
                      decoration: InputDecoration(
                        fillColor: ColorPalette.light,
                        filled: true,
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: PaletaCores.blueDark),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Senha',
                        style: TextStyle(
                          fontSize: 15,
                          color: ColorPalette.light,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      // onChanged: _signInController.client.setEmail,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: ColorPalette.light,
                        filled: true,
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: PaletaCores.blueDark),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          fontSize: 15,
                          color: ColorPalette.light,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: double.maxFinite,
                      height: 56,
                      child: ElevatedButton(
                        // onPressed: () => Get.off(() => const ContractOnePage()),
                        onPressed: () => Get.off(() => const IntroPage()),
                        child: const Text('Entrar'),
                        style: ElevatedButton.styleFrom(
                          primary: ColorPalette.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
