import 'package:charrasco_compartilhado/modules/home/widgets/add_button_widget.dart';
import 'package:charrasco_compartilhado/modules/home/widgets/chart_app_bar_widget.dart';
import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';
import 'package:charrasco_compartilhado/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;

  AppBarWidget({required this.user, required this.onTapAddButton})
      : super(
          preferredSize: Size.fromHeight(298),
          child: Stack(
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                  gradient: AppTheme.gradient.background,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 62,
                                  height: 62,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(user.photoURL!))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  user.nome as String,
                                  style: AppTheme.textStyles.appBarName,
                                ),
                              ],
                            ),
                          ),
                          AddButtonWidget(
                            onTap: onTapAddButton,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ChartAppBarWidget(valor: -20),
                          ChartAppBarWidget(valor: 30)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
}
// AppBar(
//         toolbarHeight: 200,
//         bottom: ,
//         leading: ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.network(user.photoURL!)),
//         title: Text(user.nome as String),
