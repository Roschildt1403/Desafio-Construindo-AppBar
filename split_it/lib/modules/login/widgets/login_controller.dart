import 'package:charrasco_compartilhado/modules/login/widgets/login_service.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:charrasco_compartilhado/modules/login/login_state.dart';
import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  final LoginService service;
  Function(LoginState state)? onChange;
  final VoidCallback onUpdate;

  LoginController({
    required this.service,
    required this.onUpdate,
  });

  Future<void> googleSignIn() async {
    Future<void> _handleSignIn() async {
      try {
        state = LoginStateLoading();
        update();
        final user = await service.googleSignIn();

        state = LoginStateSucces(user: user);
        update();
      } catch (error) {
        state = LoginStateFailure(message: error.toString());
        update();
      }
    }

    _handleSignIn();
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
