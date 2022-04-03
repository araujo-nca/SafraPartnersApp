import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:projeto_hackathon/app/pages/home/home_page.dart';
import 'package:projeto_hackathon/app/pages/intro/components/slides.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IntroScreens introScreens = IntroScreens(
      slides: IntroSlides.slidesList,
      skipText: '    ',
      footerRadius: 0,
      footerBgColor: ColorPalette.primary,
      indicatorType: IndicatorType.LINE,
      onDone: () => Get.off(() => const HomePage()),
      // onDone: () => Get.back(),
      onSkip: () {},
      nextWidget: Container(
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: ColorPalette.secondary,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.arrow_forward,
          size: 20,
          color: ColorPalette.light,
        ),
      ),
      doneWidget: Container(
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: ColorPalette.success,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.done,
          size: 20,
          color: ColorPalette.light,
        ),
      ),
    );

    return Scaffold(
      body: introScreens,
    );
  }
}
