import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: Colors.red.shade700,
                text: 'First',
                isSquare: false,
              ),
              const SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.yellow.shade700,
                text: 'Second',
                isSquare: false,
              ),
              const SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.pink.shade700,
                text: 'Third',
                isSquare: false,
              ),
              const SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.blue.shade700,
                text: 'Fourth',
                isSquare: false,
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.red.shade700,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: const TextStyle(
              color: Colors.white,
              shadows: null,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow.shade700,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: const TextStyle(
              color: Colors.white,
              shadows: null,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.pink.shade700,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: const TextStyle(
              color: Colors.white,
              shadows: null,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.blue.shade700,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: const TextStyle(
              color: Colors.white,
              shadows: null,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
