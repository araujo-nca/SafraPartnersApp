import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/pages/home/home_page.dart';

import '../../utils/color_palette.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Get.offAll(() => HomePage()),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: ColorPalette.primary,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: ColorPalette.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Olá, Usuário!',
                      style: TextStyle(
                        color: ColorPalette.primary,
                        fontFamily: 'HelveticaNowDisplay',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 30.0,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Nome do Serviço',
                    style: TextStyle(
                      color: ColorPalette.secondary,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec tellus gravida, sagittis mauris eget, ultrices arcu. Nulla suscipit lacinia purus in mollis.',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Banco Safra',
                    style: TextStyle(
                      color: ColorPalette.secondary,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec tellus gravida, sagittis mauris eget, ultrices arcu. Nulla suscipit lacinia purus in mollis. Morbi sed justo fringilla enim rutrum blandit in quis urna. Sed tincidunt consectetur nibh, at tempus lectus venenatis vel. Integer leo est, dapibus vitae ipsum eu, dapibus sodales ante. Donec a elit rhoncus, suscipit tortor vel, malesuada turpis. Donec sollicitudin dictum erat ut tempus.
Aliquam suscipit consequat tempus. Fusce in orci nec tortor scelerisque iaculis. Nam tempor varius urna, a egestas velit mattis et. Ut placerat lectus eget porta egestas. Ut dignissim facilisis mauris at malesuada. Sed iaculis congue ex, in fringilla massa consectetur quis. Vivamus varius ultrices elit in fringilla.''',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 130,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ColorPalette.lightPlusOne,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.assignment,
                            color: ColorPalette.darkMinusOne,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Contrato',
                            style: TextStyle(
                              color: ColorPalette.darkMinusOne,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 3,
                  ),
                  const Text(
                    'Contato',
                    style: TextStyle(
                      color: ColorPalette.secondary,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.phone_outlined),
                              SizedBox(width: 3),
                              Text('(00) 00000-0000'),
                            ],
                          ),
                          const SizedBox(width: 30),
                          Row(
                            children: const [
                              Icon(Icons.open_in_new),
                              SizedBox(width: 3),
                              Text('www.website.com.br'),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.phone_outlined),
                              SizedBox(width: 3),
                              Text('(00) 00000-0000'),
                            ],
                          ),
                          const SizedBox(width: 30),
                          Row(
                            children: const [
                              Icon(Icons.email_outlined),
                              SizedBox(width: 3),
                              Text('email@email.com.br'),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.11),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.maxFinite,
                height: Get.height * 0.1,
                color: ColorPalette.light,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ColorPalette.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Enviar uma mensagem',
                            style: TextStyle(
                              color: ColorPalette.secondary,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorPalette.secondary,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
