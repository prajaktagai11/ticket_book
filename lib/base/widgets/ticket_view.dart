import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/widgets/app_column_text_layout.dart';
import 'package:ticket_book/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_book/base/widgets/big_dot.dart';
import 'package:ticket_book/base/widgets/textstyle_fourth.dart';
import 'package:ticket_book/base/widgets/textstyle_third.dart';

import 'big_circle.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: AppStyles.ticketBlue),
              child: Column(
                children: [
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(
                                randomDivider: 6,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN")
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "New-York",
                        ),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: "London",
                            align: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  color: AppStyles.ticketOrange),
              child: const Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "1 MAY",
                      bottomText: "Date",
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      topText: "08:00 AM",
                      bottomText: "Departure Time",
                      alignment: CrossAxisAlignment.center,
                    ),
                    AppColumnTextLayout(
                      topText: "23",
                      bottomText: "Number",
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
