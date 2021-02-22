import 'package:CoinWatcher/app/models/localizacao.dart';

class ModelItem {
  int idItem;
  ModelLocalizacao idLocal;
  double preco;
  String nome;
  DateTime createdAt;
  DateTime updatedAt;
  ModelItem(
      {this.idItem,
      this.idLocal,
      this.preco,
      this.nome,
      this.createdAt,
      this.updatedAt});
}
