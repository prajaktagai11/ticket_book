import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/media.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/utils/all_json.dart';
import 'package:ticket_book/base/utils/app_routes.dart';
import 'package:ticket_book/base/widgets/app_double_text.dart';
import 'package:ticket_book/base/widgets/ticket_view.dart';
import 'package:ticket_book/screens/home/widgets/hotel.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headlineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo)),
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFfBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allTickets);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .take(2)
                            .map((singleTicket) =>
                                TicketView(ticket: singleTicket))
                            .toList())),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View all",
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .take(2)
                            .map((singleHotel) =>
                                Hotel(hotel: singleHotel))
                            .toList()))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
