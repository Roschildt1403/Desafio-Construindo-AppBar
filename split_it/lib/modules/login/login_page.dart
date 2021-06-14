import 'dart:developer';

import 'package:charrasco_compartilhado/modules/login/login_state.dart';
import 'package:charrasco_compartilhado/modules/login/widgets/login_controller.dart';
import 'package:charrasco_compartilhado/modules/login/widgets/login_service.dart';
import 'package:charrasco_compartilhado/modules/login/widgets/social_button.dart';
import 'package:charrasco_compartilhado/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controllerLogin;

  @override
  void initState() {
    controllerLogin = LoginController(
        onUpdate: () {
          print(controllerLogin.state.toString());
          if (controllerLogin.state is LoginStateSucces) {
            final user = (controllerLogin.state as LoginStateSucces).user;
            Navigator.pushReplacementNamed(context, "/home", arguments: user);
          } else {
            setState(() {});
          }
        },
        service: LoginServiceImpl());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.color.backGround,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.emoji_emotions_outlined),
                  title: Text(
                    "Faça o login com uma das contas abaixo",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                if (controllerLogin.state is LoginStateLoading) ...[
                  CircularProgressIndicator()
                ] else if (controllerLogin.state is LoginStateFailure) ...[
                  Text((controllerLogin.state as LoginStateFailure).message)
                ] else
                  SocialButtonWidget(
                    image: "assets/images/google-icon 1.png",
                    title: "Login com Google",
                    onTaperson: () {
                      controllerLogin.googleSignIn();
                    },
                  ),
                SizedBox(
                  height: 12,
                ),

                // TODO: Fazer configurações da APPLE
                // SocialButtonWidget(
                //     image: "assets/images/apple (1) 1.png",
                //     title: "Login com Apple",
                //     onTaperson: () async {
                //       try {
                //         final credential =
                //             await SignInWithApple.getAppleIDCredential(
                //           scopes: [
                //             AppleIDAuthorizationScopes.email,
                //             AppleIDAuthorizationScopes.fullName,
                //           ],
                //         );

                //         print(credential);
                //       } catch (e) {
                //         print(e);
                //       }

                //       // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
                //       // after they have been validated with Apple (see `Integration` section for more information on how to do this)
                //     }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
