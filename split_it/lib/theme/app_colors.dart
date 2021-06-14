import 'package:flutter/material.dart';

abstract class AppColor {
  Color get backGroundSplash;
  Color get backGround;
  Color get title;
  Color get button;
  Color get border;
  Color get appBarTitle;
  Color get iconBackgroundReceive;
  Color get iconBackgroundPay;
  Color get infoCardTitle;
  Color get infoCardSubTitleReceive;
  Color get infoCardSubTitlePay;
}

class AppColorsDefault implements AppColor {
  @override
  Color get backGroundSplash => Color(0xFF40B38C);

  @override
  // TODO: implement title
  Color get title => Color(0xFF40B28C);

  @override
  // TODO: implement button
  Color get button => Color(0xFF666666);

  @override
  // TODO: implement backGround
  Color get backGround => Color(0xFFFFFFFF);

  @override
  // TODO: implement border
  Color get border => Color(0xFFDCE0E5);

  @override
  // TODO: implement appBarTitle
  Color get appBarTitle => Color(0xFFFFFFFF);

  @override
  // TODO: implement iconBackground
  Color get iconBackgroundReceive => Color(0xFFE9F8F2);

  @override
  // TODO: implement infoCardTitle
  Color get infoCardTitle => Color(0xFF666666);

  @override
  // TODO: implement infoCardSubTitlePay
  Color get infoCardSubTitlePay => Color(0xFFE83F5B);

  @override
  // TODO: implement infoCardSubTitleReceive
  Color get infoCardSubTitleReceive => Color(0xFF40B28C);

  @override
  // TODO: implement iconBackgroundPay
  Color get iconBackgroundPay => Color(0xFFFDECEF);
}
