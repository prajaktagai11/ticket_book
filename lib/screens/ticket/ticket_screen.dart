import 'package:barcode_widget/barcode_widget.dart';
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

class TicketScreen extends StatefulWidget {
  const TicketScreen({
    super.key,
  });

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
      debugPrint("passed index : ${args["index"]}");
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // Text(
              //   "Tickets",
              //   style: AppStyles.headlineStyle1,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
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
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
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
                    AppLayoutBuilder(
                        randomDivider: 15, width: 5, isColor: true),
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
                    AppLayoutBuilder(
                        randomDivider: 15, width: 5, isColor: true),
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
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                TextStyleThird(
                                  text: " *** 2463",
                                  isColor: true,
                                ),
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
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: BarcodeWidget(
                          height: 70,
                          width: double.infinity,
                          drawText: false,
                          color: AppStyles.textColor,
                          data: "https://www.google.com",
                          barcode: Barcode.code128()),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
          Positioned(
              left: 22,
              top: 250,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                ),
              )),
          Positioned(
              right: 22,
              top: 250,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                ),
              )),
        ],
      ),
    );
  }
}
