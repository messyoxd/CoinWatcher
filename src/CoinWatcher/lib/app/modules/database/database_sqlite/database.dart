import 'package:CoinWatcher/app/shared/Repositorios/Compradores/compradores_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Itens/itens_sqlite_dao.dart';
import 'package:CoinWatcher/app/shared/Repositorios/Locais/locais_sqlite_dao.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(
    include: {'tables.moor'},
    daos: [CompradoresSQLiteDAO, ItensSQLiteDAO, LocalizacoesSQLiteDAO])
class CoinWatcherDb extends _$CoinWatcherDb {
  // singleton
  static final CoinWatcherDb instance = CoinWatcherDb._internal();

  CoinWatcherDb._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'coin_watcher.db', logStatements: true));

  @override
  int get schemaVersion => 1;

  @override
  // TODO: implement migration
  MigrationStrategy get migration => MigrationStrategy(beforeOpen: (db) async {
        await customStatement("PRAGMA foreign_keys = ON");
      });
}
