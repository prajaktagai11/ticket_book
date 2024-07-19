import 'package:flutter/material.dart';
import 'package:ticket_book/base/widgets/textstyle_fourth.dart';
import 'package:ticket_book/base/widgets/textstyle_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment,this.isColor});

  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText,isColor: isColor,),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(text: bottomText,isColor: isColor,),
      ],
    );
  }
}
