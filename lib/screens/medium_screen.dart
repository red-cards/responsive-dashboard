import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';
import 'package:responsive_dashboard/widgets/my_box.dart';
import 'package:responsive_dashboard/widgets/my_tile.dart';

import '../widgets/menu.dart';
import '../widgets/piechart.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: const Menu(),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) => const MyBox(),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => const MyTile(),
          ),
        ),
        // const PieChartSample2(),
      ]),
    );
  }
}
