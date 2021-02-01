import '../../../modules/compras/models/itens_compra.dart';

abstract class IItensCompra {
  Future addItensCompra(ItensCompra novoItensCompra);
  Future<ItensCompra> getItensCompra(int id);
  Future<List<ItensCompra>> getAllItensCompra();
  Future put(int id, ItensCompra novoItensCompra);
  Future delete(int id);
}