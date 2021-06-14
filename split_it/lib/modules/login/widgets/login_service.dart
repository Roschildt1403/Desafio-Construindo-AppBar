import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class LoginService {
  Future<UserModel> googleSignIn();
}

class LoginServiceImpl implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    final acount = await _googleSignIn.signIn();
    return UserModel.google(acount!);
  }
}
