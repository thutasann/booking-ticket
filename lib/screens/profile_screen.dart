import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/column_layout.dart';
import 'package:book_ticket/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(5),
          ),
          children: [
            // PROFILE HEADING SECTION
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    image: const DecorationImage(
                      image: AssetImage("images/thuta.jpeg"),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Thuta Sann",
                      style: Styles.headLineStyle1,
                    ),
                    Text(
                      "Singapore",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(100),
                        ),
                        color: const Color(0xFFFEF4F3),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3),
                      ),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.grey.shade200,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ]),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint("You are Tapped");
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // PROFILE BANNER SECTION
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    ),
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(30),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF264CD2),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: primary,
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You\'v got a new award",
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            // PROFILE INFO SECTION
            Gap(AppLayout.getHeight(25)),
            Text(
              "Accumuated miles",
              style: Styles.headLineStyle2,
            ),

            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(18),
                ),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "19887",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "23 May 2023",
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      firstText: "22 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "32 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      firstText: "22 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "32 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      firstText: "22 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "32 034",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const LayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                )
              ]),
            ),
            Gap(AppLayout.getHeight(25)),
            Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color: primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
