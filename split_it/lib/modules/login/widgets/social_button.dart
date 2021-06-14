import 'package:flutter/material.dart';

import 'package:charrasco_compartilhado/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTaperson;

  const SocialButtonWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.onTaperson,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaperson,
      // print("tap");

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.color.border))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 56,
              child: Image.asset(image),
            ),
            Container(
              width: 1,
              color: AppTheme.color.border,
            ),
            Container(
              width: 255,
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: AppTheme.textStyles.button),
            )
          ],
        ),
      ),
    );
  }
}
