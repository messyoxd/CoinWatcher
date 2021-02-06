import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'database_sqlite/database.dart';

part 'database_controller.g.dart';

@Injectable()
class DatabaseController = _DatabaseControllerBase with _$DatabaseController;

abstract class _DatabaseControllerBase with Store {

  // SQLite DB
  @observable
  CoinWatcherDb db = CoinWatcherDb.instance;

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
