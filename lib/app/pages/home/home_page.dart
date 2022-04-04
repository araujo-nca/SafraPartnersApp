import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';

import '../contract/contract_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const double minHeight = 5;
    const double maxHeight = 14;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: ColorPalette.light,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      headerRow(),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: maxHeight * 0.6),
                      servicesRow(),
                      const SizedBox(height: maxHeight),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Serviços contratados',
                          style: TextStyle(
                            color: ColorPalette.secondary,
                            letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: minHeight),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 140,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.38,
                  ),
                  items: servicesData
                      .map(
                        (el) => Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              margin: const EdgeInsets.only(bottom: 13),
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorPalette.primary,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      el['date'],
                                      style: const TextStyle(
                                        color: ColorPalette.light,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/home/03.png',
                                    scale: 1.2,
                                  ),
                                  const Text(
                                    'Banco Safra',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorPalette.light,
                                    ),
                                  ),
                                  const Text(
                                    'Nome do Serviço',
                                    style: TextStyle(
                                      color: ColorPalette.light,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                decoration: BoxDecoration(
                                  color: ColorPalette.secondary,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                height: 30,
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Detalhes',
                                      style: TextStyle(
                                        color: ColorPalette.primary,
                                      ),
                                    ),
                                    SizedBox(width: 1),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorPalette.primary,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: maxHeight),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Nossos serviços',
                          style: TextStyle(
                            color: ColorPalette.secondary,
                            letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: minHeight),
                      InkWell(
                        onTap: () => Get.to(() => const ContractOnePage()),
                        child: Container(
                          height: 200,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: ColorPalette.primary,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    'assets/home/04.png',
                                    height: double.maxFinite,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 0, 10),
                                width: Get.width * 0.60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Empréstimo',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: ColorPalette.light,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 7),
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                          color: ColorPalette.light,
                                        ),
                                        text:
                                            'Contrato entre o cliente e uma instituição financeira (banco, cooperativa de crédito, caixa econômica) pelo qual ',
                                        children: [
                                          TextSpan(
                                            text:
                                                'o cliente recebe uma quantia em dinheiro ',
                                            style: TextStyle(
                                              color: ColorPalette.light,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'que deverá ser devolvida em prazo determinado, acrescida dos juros acertados.',
                                            style: TextStyle(
                                              color: ColorPalette.light,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row headerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            color: ColorPalette.primary,
          ),
        )
      ],
    );
  }

  Row servicesRow() {
    const double cardHeight = 110;
    const double cardWidth = 150;
    const double radius = 15;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: cardHeight,
          width: cardWidth,
          decoration: BoxDecoration(
            color: ColorPalette.primary,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/home/01.png',
                  width: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Serviços\nContratados',
                      style: TextStyle(
                        color: ColorPalette.light,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '${servicesData.length}',
                        style: const TextStyle(
                          color: ColorPalette.light,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: cardHeight,
          width: cardWidth,
          decoration: BoxDecoration(
            color: ColorPalette.primary,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/home/02.png',
                  width: double.maxFinite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '1',
                      style: TextStyle(
                        color: ColorPalette.light,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    // const SizedBox(width: 5),
                    Text(
                      'Serviço\nAguardando\nPropostas',
                      style: TextStyle(
                        color: ColorPalette.light,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const List<Map> servicesData = [
  {'date': '28/03/2022'},
  {'date': '01/04/2022'},
  {'date': '01/04/2022'},
  {'date': '02/04/2022'},
  {'date': '03/04/2022'}
];
