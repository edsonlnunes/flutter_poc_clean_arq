import 'package:exemplo_arq_state/modules/authentication/authentication.module.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app.dart';
import 'core/presentation/home/home.page.dart';
import 'modules/search/search.module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => App();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, __) => HomePage(),
        ),
        ModularRouter('/authentication', module: AuthenticationModule()),
        ModularRouter('/search', module: SearchModule()),
      ];
}
