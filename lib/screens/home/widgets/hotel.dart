import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/media.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image:  DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/images/${hotel["image"]}"))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["place"],
              style:
                  AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["destination"],
              style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "\$${hotel["price"]}/night",
              style:
                  AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
        ],
      ),
    );
  }
}
