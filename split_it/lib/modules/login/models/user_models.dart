import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String? nome;
  final String email;
  final String id;
  final String? photoURL;

  UserModel({
    this.nome,
    required this.email,
    required this.id,
    this.photoURL,
  });

  factory UserModel.google(GoogleSignInAccount acount) {
    return UserModel(
      nome: acount.displayName,
      email: acount.email,
      id: acount.id,
      photoURL: acount.photoUrl,
    );
  }
}
