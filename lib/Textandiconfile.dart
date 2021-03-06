import 'package:flutter/material.dart';
import 'Constantfile.dart';

class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({@required this.iconData, this.Label});
  final IconData iconData;
  final String Label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          Label,
          style: KLabelStyle,
        ),
      ],
    );
  }
}
