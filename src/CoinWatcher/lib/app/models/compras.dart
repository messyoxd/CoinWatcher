import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';

import 'comprador.dart';

class ModelCompra {
  int idCompra;
  ModelLocalizacao localDeCompra;
  ModelComprador comprador;
  String nomeCompra;
  DateTime createdAt;
  DateTime updatedAt;
  ModelCompra(
      {this.idCompra,
      this.localDeCompra,
      this.comprador,
      this.nomeCompra,
      this.createdAt,
      this.updatedAt,
      });
}
