import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HeadingTitleBoletosWidget extends StatelessWidget {
  final String title;

  const HeadingTitleBoletosWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedCard(
          direction: AnimatedCardDirection.left,
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyles.titleBoldHeading,
                ),
              ],
            ),
          ),
        ),
        AnimatedCard(
          direction: AnimatedCardDirection.bottom,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
        ),
      ],
    );
  }
}
