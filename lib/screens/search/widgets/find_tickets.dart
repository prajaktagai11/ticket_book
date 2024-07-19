import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        decoration: BoxDecoration(
            color: AppStyles.findTickets,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
