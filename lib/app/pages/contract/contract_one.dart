import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/pages/contract/contract_two.dart';

import '../../utils/color_palette.dart';
import 'components/timeline_tiles.dart';

class ContractOnePage extends StatelessWidget {
  const ContractOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                    children: TimelineTiles.horizontalTilesList(curPage: 1),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Apresentação',
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
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
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
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const SelectableText(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec tellus gravida, sagittis mauris eget, ultrices arcu. Nulla suscipit lacinia purus in mollis. Morbi sed justo fringilla enim rutrum blandit in quis urna. Sed tincidunt consectetur nibh, at tempus lectus venenatis vel. Integer leo est, dapibus vitae ipsum eu, dapibus sodales ante. Donec a elit rhoncus, suscipit tortor vel, malesuada turpis. Donec sollicitudin dictum erat ut tempus.

Aliquam suscipit consequat tempus. Fusce in orci nec tortor scelerisque iaculis. Nam tempor varius urna, a egestas velit mattis et. Ut placerat lectus eget porta egestas. Ut dignissim facilisis mauris at malesuada. Sed iaculis congue ex, in fringilla massa consectetur quis. Vivamus varius ultrices elit in fringilla. Etiam aliquet, nulla quis rhoncus mollis, neque leo ultrices metus, sed mollis lectus orci sed ante. Aenean posuere elit quis sapien hendrerit, sed vestibulum metus lobortis. Pellentesque imperdiet pretium arcu, ut consequat mi facilisis commodo. Donec varius sit amet lacus vitae euismod. Vivamus tempus nisi sed scelerisque maximus. Suspendisse finibus ex augue, nec feugiat quam sodales sit amet. Mauris tellus lacus, commodo non tristique sed, efficitur sed justo. Duis sagittis blandit ligula, eu rutrum eros efficitur suscipit.

Aliquam placerat enim in nibh dignissim condimentum. Aenean vel nibh non nunc posuere finibus in eu elit. In elementum ut nibh eu interdum. Vestibulum nulla elit, porttitor quis auctor at, mollis in velit. Fusce viverra lacus ex, vel efficitur est sagittis eget. Sed tincidunt feugiat blandit. Pellentesque vel ante rutrum, ornare urna ac, euismod turpis. Ut massa dolor, pellentesque ac nulla non, dignissim placerat tortor. Integer laoreet orci a consequat posuere.''',
                        ),
                        SizedBox(height: Get.height * 0.11),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
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
                width: double.maxFinite,
                height: Get.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Próxima etapa: ',
                        style: TextStyle(color: ColorPalette.dark),
                        children: [
                          TextSpan(
                            text: 'Informações',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Get.to(() => const ContractTwoPage()),
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
                            'Próximo',
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
