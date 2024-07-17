import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_book/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_book/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(text: 'Departure', icon: Icons.flight_takeoff_rounded,),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded,),
          const SizedBox(
            height: 25,
          ),
           FindTickets(text: "Find Tickets", onTap: (){

          })
        ],
      ),
    );
  }
}
