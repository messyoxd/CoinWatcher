import 'package:CoinWatcher/app/modules/compras/pages/compras_add.dart';
import 'package:CoinWatcher/app/modules/compras/pages/compras_detalhes.dart';
import 'package:CoinWatcher/app/modules/compras/pages/compras_editar.dart';
import 'package:CoinWatcher/app/modules/compras/pages/compras_page.dart';

import 'compras_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'compras_page.dart';

class ComprasModule extends ChildModule {
  @override
  List<Bind> get binds => [
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Compras()),
        ModularRouter('/adicionar-compra', child: (_, args) => ComprasAdd()),
        ModularRouter('/compra-detalhes', child: (_, args) => ComprasDetalhes()),
        ModularRouter('/compra-editar', child: (_, args) => ComprasEditar()),
      ];

  static Inject get to => Inject<ComprasModule>.of();
}
