import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Center(
        child: Container(
          height: 1,
          color: BASE_GRAY,
        ),
      ),
    );
  }
}
