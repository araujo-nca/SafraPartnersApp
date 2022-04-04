import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/pages/service/service_page.dart';

import '../../utils/color_palette.dart';
import 'components/timeline_tiles.dart';

class ContractFourPage extends StatefulWidget {
  const ContractFourPage({Key? key, required this.proposeInfo})
      : super(key: key);

  final Map proposeInfo;

  @override
  State<ContractFourPage> createState() => _ContractFourPageState();
}

class _ContractFourPageState extends State<ContractFourPage> {
  bool _hasRequested = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
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
                  ),
                  Container(
                    constraints: const BoxConstraints(maxHeight: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: TimelineTiles.horizontalTilesList(curPage: 4),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Aprovação',
                    style: TextStyle(
                      color: ColorPalette.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (_hasRequested)
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorPalette.success,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: const Text(
                        'Validamos as informações\n e está tudo ceto',
                        style: TextStyle(
                          color: ColorPalette.light,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Serviço',
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
                        const Text('Empréstimo pessoal'),
                        const SizedBox(height: 20),
                        Text(
                          'Banco ${widget.proposeInfo['id']}',
                          style: const TextStyle(
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
                        Text('${widget.proposeInfo['description']}'),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: _hasRequested ? 130 : 190,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: ColorPalette.lightPlusOne,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.assignment,
                                    color: ColorPalette.darkMinusOne),
                                const SizedBox(width: 10),
                                Text(
                                  _hasRequested
                                      ? 'Contrato'
                                      : 'Minuta do contrato',
                                  style: const TextStyle(
                                    color: ColorPalette.darkMinusOne,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_hasRequested)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(
                                height: 20,
                                thickness: 3,
                              ),
                              const Text(
                                'Senha transacional',
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
                              SizedBox(height: 5),
                              Container(
                                width: Get.width * 0.5,
                                height: 32,
                                child: TextFormField(
                                  obscureText: true,
                                  // onChanged: _signInController.client.setEmail,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 12,
                                    ),
                                    hintText: 'Digite aqui',
                                    fillColor: ColorPalette.lightPlusOne,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
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
                decoration: BoxDecoration(
                  color: ColorPalette.light,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: const Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Valor final: ',
                        style: const TextStyle(color: ColorPalette.dark),
                        children: [
                          TextSpan(
                            text: '${widget.proposeInfo['budget']}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        !_hasRequested
                            ? setState(() {
                                _hasRequested = true;
                              })
                            : Get.to(() => const ServicePage())
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ColorPalette.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        _hasRequested ? 'Contratar!' : 'Solicitar',
                        style: const TextStyle(
                          color: ColorPalette.secondary,
                          fontSize: 16,
                        ),
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
