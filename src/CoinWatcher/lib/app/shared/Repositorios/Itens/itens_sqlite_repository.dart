import 'package:CoinWatcher/app/models/item.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IItens.dart';

class ItensSQLiteRepository implements IItem {
  @override
  Future addItem(ModelItem novoItem) {
    // TODO: implement addItem
    throw UnimplementedError();
  }

  @override
  Future remove(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ModelItem>> getAllItem() {
    // TODO: implement getAllItem
    throw UnimplementedError();
  }

  @override
  Future<ModelItem> getItem(int id) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future put(int id, ModelItem novoItem) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
