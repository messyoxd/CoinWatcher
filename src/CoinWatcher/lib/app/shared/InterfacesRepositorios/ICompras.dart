import 'package:CoinWatcher/app/models/compras.dart';

abstract class ICompra {
  Future addCompra(ModelCompra novaCompra);
  Future<ModelCompra> getCompra(int id);
  Future<List<ModelCompra>> getAllCompras();
  Future put(int id, ModelCompra novaCompra);
  Future remove(int id);
}
