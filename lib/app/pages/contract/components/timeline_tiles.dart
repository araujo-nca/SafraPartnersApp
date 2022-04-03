import 'package:flutter/material.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';
import 'package:timeline_tile/timeline_tile.dart';

const double activeSize = 32;
const double inactiveSize = 25;

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
            // drawGap: true,
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
            // drawGap: true,
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
            // drawGap: true,
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
            // drawGap: true,
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
}
