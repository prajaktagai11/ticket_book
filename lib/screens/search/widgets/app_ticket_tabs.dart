import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppStyles.whiteColor_F7F9F,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          AppTabs(
            text: 'Airline Tickets',
            isLeft: true,
            color: Colors.white,
          ),
          AppTabs(
            text: 'Hotels',
            isLeft: false,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
   
    required this.text,
    required this.isLeft,
    required this.color,
  });

  final String text;
  final bool isLeft;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: color,
          borderRadius: isLeft == true
              ? BorderRadius.horizontal(left: Radius.circular(50))
              : BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(text)),
    );
  }
}
