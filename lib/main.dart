import 'package:flutter/material.dart';
import 'package:ticket_book/screens/home/all_hotels.dart';
import 'package:ticket_book/screens/home/all_tickets.dart';
import 'package:ticket_book/screens/ticket/ticket_screen.dart';

import 'base/bottom_nav_bar.dart';
import 'base/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
      },
    );
  }
}
