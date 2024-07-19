import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/media.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/widgets/app_double_text.dart';
import 'package:ticket_book/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_book/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_book/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          const AppTicketTabs(text1: 'Airline Tickets', text2: 'Hotels',),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(
            height: 25,
          ),
          FindTickets(text: "Find Tickets", onTap: () {}),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
              bigText: "Upcoming Flights", smallText: "View All", func: () {}),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: size.width * .42,
                  height: 435,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 2)
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.planeSit),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 12,),
                      Text("20% discount on the early booking of this flight. Don't miss",style: AppStyles.headlineStyle2,)
                    ],
                  )),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: AppStyles.container_3AB8B8

                        ),
                        child: Column(
                          children: [
                            Text("Discount\nfor survey",style: AppStyles.headlineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            const SizedBox(height: 10,),
                            Text("Take the survey about our services and get discount",style: AppStyles.headlineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: AppStyles.circleColor),


                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    width: size.width * .44,
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppStyles.container_EC6545
                    ),
                    child: Column(
                      children: [
                        Text("Take Love",style: AppStyles.headlineStyle2.copyWith(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
