import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

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
            onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> AllTickets()));
            },
            child: Text(
              smallText,
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor
              ),
            )),
      ],
    );
  }
}
