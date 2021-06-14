import 'package:meta/meta.dart';

import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';

abstract class LoginState {}

class LoginStateEmpty extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateFailure extends LoginState {
  final String message;

  LoginStateFailure({required this.message});
}

class LoginStateSucces extends LoginState {
  final UserModel user;
  LoginStateSucces({
    required this.user,
  });
}
