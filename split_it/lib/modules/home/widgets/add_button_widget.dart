import 'package:charrasco_compartilhado/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const AddButtonWidget({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        height: 56,
        width: 48,
        decoration: BoxDecoration(
            border: Border.all(color: AppTheme.color.border.withOpacity(0.7)),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Icon(
            Icons.add,
            color: AppTheme.color.backGround,
          ),
        ),
      ),
    );
  }
}
