import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            // HEADING TEXT
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
            ),
            Gap(AppLayout.getHeight(20)),

            // TAB UI
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: const Color(0xFFF4F6FD),
                ),
                child: Row(
                  children: [
                    /**
                   * Airline Ticket Tab
                   */
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(7),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text("Airline Tickets"),
                      ),
                    ),

                    /**
                   * Hotels Tab
                   */
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(7),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.transparent,
                      ),
                      child: const Center(
                        child: Text("Hotels"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
