import 'database_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'database_sqlite/database.dart';


class DatabaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DatabaseController()),
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<DatabaseModule>.of();
}
