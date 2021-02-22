import 'package:CoinWatcher/app/modules/compras/compras_controller.dart';
import 'package:CoinWatcher/app/modules/compras/compras_module.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Compradores/compradores_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Compras/compras_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Itens/itens_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/ItensCompras/itensCompra_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Locais/locais_sqlite_dao.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:CoinWatcher/app/app_widget.dart';

import 'modules/database/database_sqlite/database.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => ComprasController()),
        Bind((i) => CoinWatcherDb.instance),
        Bind((i) => CompradoresSQLiteDAO(i.get())),
        Bind((i) => ComprasSQLiteDAO(i.get())),
        Bind((i) => LocalizacoesSQLiteDAO(i.get())),
        Bind((i) => ItensSQLiteDAO(i.get())),
        Bind((i) => ItensCompraSQLiteDAO(i.get())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: ComprasModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
