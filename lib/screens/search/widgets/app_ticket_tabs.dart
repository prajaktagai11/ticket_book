import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      color: AppStyles.whiteColor_F7F9F,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: const Center(child: Text("Airline Tickets")),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: const Center(child: Text("Hotels")),
          ),

        ],
      ),
    );
  }
}
