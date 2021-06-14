import 'package:charrasco_compartilhado/modules/home/widgets/app_bar.dart';
import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
        appBar: AppBarWidget(
      onTapAddButton: () {},
      user: user,
    ));
  }
}
