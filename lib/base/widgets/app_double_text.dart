import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headlineStyle3,
        ),
        InkWell(
            onTap: func,
            child: Text(
              smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
            )),
      ],
    );
  }
}
