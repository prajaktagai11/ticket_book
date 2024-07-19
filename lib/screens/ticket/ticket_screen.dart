import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/media.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/utils/all_json.dart';
import 'package:ticket_book/base/widgets/app_column_text_layout.dart';
import 'package:ticket_book/base/widgets/ticket_view.dart';
import 'package:ticket_book/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/app_layoutbuilder_widget.dart';
import '../../base/widgets/textstyle_fourth.dart';
import '../../base/widgets/textstyle_third.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            text1: 'Upcoming',
            text2: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColor,
            child:  Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "52245455224",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AppLayoutBuilder(randomDivider: 15, width: 5, isColor: true),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "24645 232423523  ",
                      bottomText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "B3465456",
                      bottomText: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AppLayoutBuilder(randomDivider: 15, width: 5, isColor: true),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard),
                            TextStyleThird(text: "***2463",isColor: true,),
                          ],
                        ),
                         SizedBox(
                          height: 5,
                        ),
                        TextStyleFourth(
                          text: "Payment method",
                          isColor: true,
                        ),
                      ],
                    ),
                    AppColumnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
