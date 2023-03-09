import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/views/ticket_view.dart';
import 'package:book_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
              ),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),

                // TICKET UI
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
