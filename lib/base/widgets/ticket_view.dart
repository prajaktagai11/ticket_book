import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/widgets/app_column_text_layout.dart';
import 'package:ticket_book/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_book/base/widgets/big_dot.dart';
import 'package:ticket_book/base/widgets/textstyle_fourth.dart';
import 'package:ticket_book/base/widgets/textstyle_third.dart';

import 'big_circle.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(
                                randomDivider: 6,
                                isColor: isColor,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeColor1,
                                )),
                          )
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["code"],
                            align: TextAlign.end,
                            isColor: isColor,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                          randomDivider: 16, width: 6, isColor: isColor)),
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0)),
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: ticket["date"],
                      bottomText: "Date",
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor,
                    ),
                    AppColumnTextLayout(
                      topText: ticket["departure_time"],
                      bottomText: "Departure Time",
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                    AppColumnTextLayout(
                      topText: ticket["number"].toString(),
                      bottomText: "Number",
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor,
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
