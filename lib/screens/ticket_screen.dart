import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/views/ticket_view.dart';
import 'package:book_ticket/widgets/column_layout.dart';
import 'package:book_ticket/widgets/layout_builder_widget.dart';
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
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
              ),
              children: [
                // HEADING SECTION
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),

                // TICKET UI SECTION
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),

                const SizedBox(
                  height: 1,
                ),

                // TICKET INFO SECTION
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          ColumnLayout(
                            firstText: "5221 364869",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                    ],
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
