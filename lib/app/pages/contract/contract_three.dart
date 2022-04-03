import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_palette.dart';
import 'components/timeline_tiles.dart';

class ContractThreePage extends StatefulWidget {
  const ContractThreePage({Key? key}) : super(key: key);

  @override
  State<ContractThreePage> createState() => _ContractThreePageState();
}

class _ContractThreePageState extends State<ContractThreePage> {
  bool _hasPropose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _hasPropose ? _proposesBody() : _timelineBody(),
        ),
      ),
    );
  }

  Column _timelineBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
            children: TimelineTiles.horizontalTilesList(curPage: 3),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Propostas',
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
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          constraints: BoxConstraints(maxWidth: Get.width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: TimelineTiles.verticalTilesList(),
          ),
        ),
        InkWell(
          onTap: () => setState(() {
            _hasPropose = true;
          }),
          child: Image.asset(
            'assets/contract/05.png',
            width: double.maxFinite,
          ),
        ),
        // SizedBox(height: 10),
      ],
    );
  }

  Column _proposesBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
            children: TimelineTiles.horizontalTilesList(curPage: 3),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Propostas',
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
        const SizedBox(height: 5),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: proposes.length,
          itemBuilder: (BuildContext context, int index) {
            final Map<String, String> propose = proposes[index];

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              color: ColorPalette.lightPlusOne,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Banco ${propose['id']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorPalette.primary,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '${propose['date']}',
                          style: const TextStyle(
                            color: ColorPalette.darkMinusOne,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '${propose['budget']}',
                      style: const TextStyle(
                        color: ColorPalette.secondaryDark,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec tellus gravida, sagittis mauris eget, ultrices arcu.',
                    ),
                    const SizedBox(height: 3),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: Get.width * 0.28,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: ColorPalette.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Detalhes',
                                style: TextStyle(
                                  color: ColorPalette.secondary,
                                  fontSize: 16,
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
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

const List<Map<String, String>> proposes = [
  {
    'id': '01',
    'budget': 'R\$30.000,00',
    'date': '02/04/2022, às 13h',
  },
  {
    'id': '02',
    'budget': 'R\$35.500,00',
    'date': '02/04/2022, às 14h',
  },
  {
    'id': '03',
    'budget': 'R\$32.800,00',
    'date': '02/04/2022, às 15h',
  },
  {
    'id': '04',
    'budget': 'R\$40.000,00',
    'date': '02/04/2022, às 16h',
  },
  {
    'id': '05',
    'budget': 'R\$49.900,00',
    'date': '02/04/2022, às 17h',
  }
];
