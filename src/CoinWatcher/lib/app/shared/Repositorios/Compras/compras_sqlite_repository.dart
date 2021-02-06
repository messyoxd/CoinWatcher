import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ICompras.dart';

class ComprasSQLiteRepository implements ICompra {
  @override
  Future addCompra(ModelCompra novaCompra) {
    // TODO: implement addCompra
    throw UnimplementedError();
  }

  @override
  Future remove(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ModelCompra>> getAllCompras() {
    // TODO: implement getAllCompras
    throw UnimplementedError();
  }

  @override
  Future<ModelCompra> getCompra(int id) {
    // TODO: implement getCompra
    throw UnimplementedError();
  }

  @override
  Future put(int id, ModelCompra novaCompra) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
