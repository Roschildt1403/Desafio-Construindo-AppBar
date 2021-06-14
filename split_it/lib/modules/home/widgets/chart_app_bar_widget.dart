import 'package:charrasco_compartilhado/modules/home/widgets/icon_dollar_button_widget.dart';
import 'package:charrasco_compartilhado/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartAppBarWidget extends StatelessWidget {
  final int valor;
  DollarType get type => valor > 0 ? DollarType.receive : DollarType.pay;
  TextStyle get moneyStyle => valor > 0
      ? AppTheme.textStyles.infoCardSubTitleReceive
      : AppTheme.textStyles.infoCardSubTitlePay;
  String get payOrReceive => valor > 0 ? "A receber" : "A pagar";
  const ChartAppBarWidget({Key? key, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppTheme.color.border),
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.color.backGround),
      height: 168,
      width: 156,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconDollarButtonWidget(type: type),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    payOrReceive,
                    style: AppTheme.textStyles.infoCardTitle,
                  ),
                  Text("R\$ $valor reais", style: moneyStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
