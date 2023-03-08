import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const SubTitleWidget({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle1,
        ),
        InkWell(
          onTap: () {
            debugPrint("It is tapped");
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
