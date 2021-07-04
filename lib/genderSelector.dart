import 'package:flutter/material.dart';
import 'constant.dart';
class GenderSelector extends StatelessWidget {
  GenderSelector({this.gicon, this.label});

  final IconData gicon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gicon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
