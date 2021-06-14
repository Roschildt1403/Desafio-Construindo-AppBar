import 'package:charrasco_compartilhado/modules/login/login_state.dart';
import 'package:charrasco_compartilhado/modules/login/models/user_models.dart';
import 'package:charrasco_compartilhado/modules/login/widgets/login_controller.dart';
import 'package:charrasco_compartilhado/modules/login/widgets/login_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class LoginServiceMocked extends Mock implements LoginService {}

void main() {
  late LoginController loginController;
  late LoginService service;

  setUp(() {
    service = LoginServiceMocked();
    loginController = LoginController(onUpdate: () {}, service: service);
  });

  test("Testar o google SignIn retornando sucesso", () async {
    expect(loginController.state, isInstanceOf<LoginStateEmpty>());
    final stateList = <LoginState>[];

    loginController.listen((state) => stateList.add(state));
    when(service.googleSignIn).thenAnswer(
      (invocation) async => UserModel(
        email: "email",
        id: "id",
      ),
    );
    await loginController.googleSignIn();

    expect(stateList[1], isInstanceOf<LoginStateSucces>());
    expect(stateList[0], isInstanceOf<LoginStateLoading>());
  });

  test("Testar o google SignIn retornando erro", () async {
    expect(loginController.state, isInstanceOf<LoginStateEmpty>());
    final stateList = <LoginState>[];

    loginController.listen((state) => stateList.add(state));

    when(service.googleSignIn).thenThrow("Error");
    await loginController.googleSignIn();
    expect(stateList[0], isInstanceOf<LoginStateLoading>());
  });
  test("Testar o listen", () async {
    loginController.state = LoginStateLoading();
    loginController.listen((state) => expect(
          state,
          isInstanceOf<LoginStateLoading>(),
        ));
    loginController.update();
  });
}
