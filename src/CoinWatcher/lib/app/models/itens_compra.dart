import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/models/item.dart';

class ModelItensCompra {
  int idItensCompra;
  ModelCompra compra;
  int quantidadeComprada;
  ModelItem itemComprado;
  DateTime createdAt;
  DateTime updatedAt;
  ModelItensCompra(
      {this.idItensCompra,
      this.compra,
      this.itemComprado,
      this.quantidadeComprada,
      this.createdAt,
      this.updatedAt});
}
