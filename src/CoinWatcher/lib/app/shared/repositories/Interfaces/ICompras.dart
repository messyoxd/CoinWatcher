import '../../../modules/compras/models/compras.dart';

abstract class ICompra {
  Future addCompra(Compra novaCompra);
  Future<Compra> getCompra(int id);
  Future<List<Compra>> getAllCompras();
  Future put(int id, Compra novaCompra);
  Future delete(int id);
}
