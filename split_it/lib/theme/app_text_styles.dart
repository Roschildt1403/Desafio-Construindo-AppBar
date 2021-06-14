import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBarName;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubTitleReceive;
  TextStyle get infoCardSubTitlePay;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  // TODO: implement button
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.color.button,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement title
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.color.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement appBarName
  TextStyle get appBarName => GoogleFonts.montserrat(
        color: AppTheme.color.appBarTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement infoCardTitle
  TextStyle get infoCardTitle => GoogleFonts.inter(
        color: AppTheme.color.infoCardTitle,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement infoCardSubTitle
  TextStyle get infoCardSubTitleReceive => GoogleFonts.inter(
        color: AppTheme.color.infoCardSubTitleReceive,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  // TODO: implement infoCardSubTitlePay
  TextStyle get infoCardSubTitlePay => GoogleFonts.inter(
        color: AppTheme.color.infoCardSubTitlePay,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
}
