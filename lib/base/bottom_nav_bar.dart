import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/base/widgets/ticket_view.dart';
import 'package:ticket_book/screens/ticket/ticket_screen.dart';

import '../screens/home/home_screen.dart';
import '../screens/search/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const SearchScreen(),
    // ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    debugPrint("Selected index : ${_selectedIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526400),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                label: "Home",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Search",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: "Tickets",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                label: "Profile",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
          ]),
    );
  }
}
