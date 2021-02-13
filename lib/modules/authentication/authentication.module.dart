import 'package:exemplo_arq_state/modules/authentication/presentation/login/login.page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => LoginPage()),
      ];
}
