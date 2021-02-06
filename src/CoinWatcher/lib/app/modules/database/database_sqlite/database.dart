import 'package:CoinWatcher/app/shared/Repositorios/Compradores/compradores_sqlite_dao.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(include: {'tables.moor'}, daos: [CompradoresSQLiteDAO])
class CoinWatcherDb extends _$CoinWatcherDb {
  // singleton
  static final CoinWatcherDb instance = CoinWatcherDb._internal();

  getCompradoresAll(){
    select(compradores).get();
  }

  CoinWatcherDb._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'coin_watcher.db', logStatements: true));

  @override
  int get schemaVersion => 1;
}
