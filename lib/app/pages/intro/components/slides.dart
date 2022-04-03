import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';

class IntroSlides {
  static final List<IntroScreen> slidesList = <IntroScreen>[
    IntroScreen(
        header: const HeaderContainer(
          title: 'Bem-vindo!',
          imagePath: 'assets/intro/slide01.png',
        ),
        headerPadding: const EdgeInsets.symmetric(vertical: 0),
        headerBgColor: ColorPalette.primary,
        title: '',
        textStyle: const TextStyle(
          fontSize: 20,
          color: ColorPalette.light,
        ),
        description:
            'O Safra Partners Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi bibendum diam vitae egestas tristique. Pellentesque habitant morbi tristique senectus et netus.'),
    IntroScreen(
        header: const HeaderContainer(
          title: 'Serviços',
          imagePath: 'assets/intro/slide02.png',
        ),
        headerPadding: const EdgeInsets.symmetric(vertical: 0),
        headerBgColor: ColorPalette.primary,
        title: '',
        textStyle: const TextStyle(
          fontSize: 20,
          color: ColorPalette.light,
        ),
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi bibendum diam vitae egestas tristique. Pellentesque habitant morbi tristique senectus et netus.'),
    IntroScreen(
      header: const HeaderContainer(
        title: 'Dados',
        imagePath: 'assets/intro/slide03.png',
      ),
      headerPadding: const EdgeInsets.symmetric(vertical: 0),
      headerBgColor: ColorPalette.primary,
      title: '',
      textStyle: const TextStyle(
        fontSize: 17,
        color: ColorPalette.light,
      ),
      description:
          'Este serviço utilizará as seguintes informações pessoais para personalizar a sua experiência no app:\n\u2022 Identidade, nome, foto, endereço de e-mail e número de telefone\nO Safra Partners respeitará os termos de uso e a política de privacidade.\nAo continuar você consente com a utilização desses dados.',
    ),
  ];
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.light,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: ColorPalette.primary,
                fontFamily: 'HelveticaNowDisplay',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Center(child: Image.asset(imagePath)),
        ],
      ),
    );
  }
}
