import 'package:CoinWatcher/app/models/itens_compra.dart';

abstract class IItensCompra {
  Future addItensCompra(ModelItensCompra novoItensCompra);
  Future<ModelItensCompra> getItensCompra(int id);
  Future<List<ModelItensCompra>> getItensCompraByCompra(int idCompra);
  Future<List<ModelItensCompra>> getAllItensCompra();
  Future put(int id, ModelItensCompra novoItensCompra);
  Future remove(int id);
}
