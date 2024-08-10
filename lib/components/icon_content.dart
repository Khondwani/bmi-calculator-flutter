import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.label, this.iconImage});
  final String label;
  final IconData iconImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconImage,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
