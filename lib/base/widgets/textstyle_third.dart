import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text,this.align = TextAlign.start});
  final String text;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headlineStyle3
          .copyWith(color: Colors.white),
    );
  }
}
