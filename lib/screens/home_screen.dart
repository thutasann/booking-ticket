import 'package:book_ticket/screens/hotel_screen.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/views/ticket_view.dart';
import 'package:book_ticket/widgets/sub_title_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("images/logo.png"),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFbFC205),
                    ),
                    Text("Search", style: Styles.headLineStyle4)
                  ],
                ),
              ),
              const Gap(40),
              const SubTitleWidget(
                  bigText: "Upcoming Flights", smallText: "View all")
            ],
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map(
                    (ticket) => TicketView(
                      ticket: ticket,
                    ),
                  )
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            child: const SubTitleWidget(
              bigText: "Hotels",
              smallText: "View all",
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),
          const Gap(25),
        ],
      ),
    ));
  }
}
