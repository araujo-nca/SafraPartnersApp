import 'package:flutter/material.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';
import 'package:timeline_tile/timeline_tile.dart';

const double activeSize = 32;
const double inactiveSize = 25;
const double kFontSize = 16;

class TimelineTiles {
  static List<TimelineTile> horizontalTilesList({required double curPage}) =>
      <TimelineTile>[
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
          indicatorStyle: IndicatorStyle(
            height: curPage == 1 ? activeSize : inactiveSize,
            width: curPage == 1 ? activeSize : inactiveSize,
            padding: const EdgeInsets.all(8),
            indicator: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorPalette.primary,
              ),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: (curPage == 1 ? activeSize : inactiveSize) * 0.6,
                    color: ColorPalette.light,
                  ),
                ),
              ),
            ),
          ),
          isFirst: true,
        ),
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
          indicatorStyle: IndicatorStyle(
            height: curPage == 2 ? activeSize : inactiveSize,
            width: curPage == 2 ? activeSize : inactiveSize,
            padding: const EdgeInsets.all(8),
            indicator: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorPalette.primary,
              ),
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: (curPage == 2 ? activeSize : inactiveSize) * 0.6,
                    color: ColorPalette.light,
                  ),
                ),
              ),
            ),
          ),
        ),
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
          indicatorStyle: IndicatorStyle(
            height: curPage == 3 ? activeSize : inactiveSize,
            width: curPage == 3 ? activeSize : inactiveSize,
            padding: const EdgeInsets.all(8),
            indicator: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorPalette.primary,
              ),
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: (curPage == 3 ? activeSize : inactiveSize) * 0.6,
                    color: ColorPalette.light,
                  ),
                ),
              ),
            ),
          ),
        ),
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          indicatorStyle: IndicatorStyle(
            height: curPage == 4 ? activeSize : inactiveSize,
            width: curPage == 4 ? activeSize : inactiveSize,
            padding: const EdgeInsets.all(8),
            indicator: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorPalette.primary,
              ),
              child: Center(
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: (curPage == 4 ? activeSize : inactiveSize) * 0.6,
                    color: ColorPalette.light,
                  ),
                ),
              ),
            ),
          ),
          isLast: true,
        ),
      ];

  static List<TimelineTile> verticalTilesList() => <TimelineTile>[
        TimelineTile(
          isFirst: true,
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.primary,
              ),
              child: const Icon(
                Icons.done,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(
                        text: 'Conheça',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' o serviço.')
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
        ),
        TimelineTile(
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.primary,
              ),
              child: const Icon(
                Icons.done,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(
                        text: 'Preencher',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' as suas informações.')
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
        ),
        TimelineTile(
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.primary,
              ),
              child: const Icon(
                Icons.done,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(text: 'Os '),
                    TextSpan(
                        text: 'dados',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' foram '),
                    TextSpan(
                        text: 'enviados',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' para as empresas que prestam o serviço.'),
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
        ),
        TimelineTile(
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.primary,
              ),
              child: const Icon(
                Icons.search,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(
                        text: 'Análise',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text:
                          ' dos dados e formulação das propostas em até 3 horas.',
                    ),
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.primary),
        ),
        TimelineTile(
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.lightPlusOne,
              ),
              child: const Icon(
                Icons.access_time,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(
                      text: 'Você escolhe a proposta que mais gostar.',
                    ),
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.primary),
          afterLineStyle: const LineStyle(color: ColorPalette.lightPlusOne),
        ),
        TimelineTile(
          isLast: true,
          indicatorStyle: IndicatorStyle(
            width: 30,
            height: 30,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorPalette.lightPlusOne,
              ),
              child: const Icon(
                Icons.access_time,
                color: ColorPalette.light,
                size: 20,
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: ColorPalette.dark,
                    fontSize: kFontSize,
                  ),
                  children: [
                    TextSpan(
                        text: 'Contrato',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ' o serviço que cabe no seu bolso!',
                    ),
                  ]),
            ),
          ),
          beforeLineStyle: const LineStyle(color: ColorPalette.lightPlusOne),
          afterLineStyle: const LineStyle(color: ColorPalette.lightPlusOne),
        )
      ];
}
