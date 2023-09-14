import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';
import 'package:responsive_dashboard/widgets/menu.dart';
import 'package:responsive_dashboard/widgets/my_box.dart';
import 'package:responsive_dashboard/widgets/my_tile.dart';
import 'package:responsive_dashboard/widgets/piechart.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: const Menu(),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
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
