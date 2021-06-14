import 'package:flutter/material.dart';

import 'package:charrasco_compartilhado/theme/app_theme.dart';

enum DollarType { receive, pay }

class IconDollarButtonWidget extends StatelessWidget {
  final DollarType type;
  const IconDollarButtonWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  String get pathImage =>
      "assets/images/dollar-${type == DollarType.receive ? 'receive' : 'send'}-arrow.png";
  Color get backGroundColor => type == DollarType.receive
      ? AppTheme.color.iconBackgroundReceive
      : AppTheme.color.iconBackgroundPay;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backGroundColor),
      child: Center(
          child: Image.asset(
        pathImage,
        width: 32,
        height: 32,
      )),
    );
  }
}
