import 'package:CoinWatcher/app/models/comprador.dart';
import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/models/item.dart';
import 'package:CoinWatcher/app/models/itens_compra.dart';
import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IItensCompras.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'itensCompra_sqlite_dao.g.dart';

@UseDao(tables: [ItensCompra])
class ItensCompraSQLiteDAO extends DatabaseAccessor<CoinWatcherDb>
    with _$ItensCompraSQLiteDAOMixin
    implements IItensCompra {
  ItensCompraSQLiteDAO(CoinWatcherDb attachedDatabase)
      : super(attachedDatabase);

  @override
  Future addItensCompra(ModelItensCompra novoItensCompra) async {
    var createdAt = DateTime.now();
    String sqlString =
        "insert into itensCompras (compra, QuantidadeComprada, itemComprado, createdAt, updatedAt) values " +
            "('${novoItensCompra.compra.idCompra}','${novoItensCompra.quantidadeComprada}','${novoItensCompra.itemComprado.idItem}', '$createdAt', '${DateTime.now()}')" +
            ";";
    ItensCompra id;
    try {
      await customInsert(sqlString);
      await customSelect(
              "select * from itensCompras where createdAt = '$createdAt' LIMIT 1;")
          .get()
          .then((row) {
        id = ItensCompra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Compra id2;
    try {
      await customSelect(
              "select * from compras where idCompra = '${id.compra}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Compra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Comprador id3;
    try {
      await customSelect(
              "select * from compradores where idComprador = '${id2.comprador}' LIMIT 1;")
          .get()
          .then((row) {
        id3 = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id4;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${id2.localDeCompra}' LIMIT 1;")
          .get()
          .then((row) {
        id4 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelItensCompra(
      itemComprado: novoItensCompra.itemComprado,
      compra: ModelCompra(
          comprador: ModelComprador(
              nome: id3.nome,
              idComprador: id3.idComprador,
              createdAt: DateTime.parse(id3.createdAt),
              updatedAt: DateTime.parse(id3.updatedAt)),
          createdAt: DateTime.parse(id2.createdAt),
          updatedAt: DateTime.parse(id2.updatedAt),
          idCompra: id2.idCompra,
          nomeCompra: id2.nomeCompra,
          localDeCompra: ModelLocalizacao(
            nome: id4.nome,
            idLocal: id4.idLocal,
            createdAt: DateTime.parse(id4.createdAt),
            updatedAt: DateTime.parse(id4.updatedAt),
          )),
      idItensCompra: id.idItensCompra,
      quantidadeComprada: id.quantidadeComprada,
      createdAt: DateTime.parse(id.createdAt),
      updatedAt: DateTime.parse(id.updatedAt),
    );
  }

  @override
  Future<List<ModelItensCompra>> getAllItensCompra() async {
    String sqlString = "select * from itensCompras;";
    List<ItensCompra> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.itensCompras})
          .get()
          .then((row) {
        row.forEach((value) {
          aux.add(ItensCompra.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    String sqlString2 = "";

    List<ModelItensCompra> modelItensComprados = [];
    Item aux2;
    Compra id2;
    Comprador id3;
    Localizacao id4;
    aux.forEach((value) async {
      sqlString2 =
          "select * from itens where idItem = ${value.itemComprado} LIMIT 1;";
      try {
        await customSelect(sqlString2, readsFrom: {db.itens}).get().then((row) {
          aux2 = Item.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from compras where idCompra = '${value.compra}' LIMIT 1;")
            .get()
            .then((row) {
          id2 = Compra.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from compradores where idComprador = '${id2.comprador}' LIMIT 1;")
            .get()
            .then((row) {
          id3 = Comprador.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from localizacoes where idLocal = '${id2.localDeCompra}' LIMIT 1;")
            .get()
            .then((row) {
          id4 = Localizacao.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      modelItensComprados.add(ModelItensCompra(
        itemComprado: ModelItem(
            nome: aux2.nome,
            idItem: aux2.idItem,
            preco: aux2.preco,
            idLocal: ModelLocalizacao(
              nome: id4.nome,
              idLocal: id4.idLocal,
              createdAt: DateTime.parse(id4.createdAt),
              updatedAt: DateTime.parse(id4.updatedAt),
            ),
            createdAt: DateTime.parse(aux2.createdAt),
            updatedAt: DateTime.parse(aux2.updatedAt)),
        compra: ModelCompra(
            comprador: ModelComprador(
                nome: id3.nome,
                idComprador: id3.idComprador,
                createdAt: DateTime.parse(id3.createdAt),
                updatedAt: DateTime.parse(id3.updatedAt)),
            createdAt: DateTime.parse(id2.createdAt),
            updatedAt: DateTime.parse(id2.updatedAt),
            idCompra: id2.idCompra,
            nomeCompra: id2.nomeCompra,
            localDeCompra: ModelLocalizacao(
              nome: id4.nome,
              idLocal: id4.idLocal,
              createdAt: DateTime.parse(id4.createdAt),
              updatedAt: DateTime.parse(id4.updatedAt),
            )),
        idItensCompra: value.idItensCompra,
        quantidadeComprada: value.quantidadeComprada,
        createdAt: DateTime.parse(value.createdAt),
        updatedAt: DateTime.parse(value.updatedAt),
      ));
    });
    return modelItensComprados;
  }

  @override
  Future<ModelItensCompra> getItensCompra(int id) async {
    String sqlString = "select * from itensCompras where idItensCompra = " +
        "'$id'"
            "LIMIT 1;";
    ItensCompra aux;
    try {
      await customSelect(sqlString, readsFrom: {db.itensCompras})
          .get()
          .then((row) {
        aux = ItensCompra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Compra id2;
    try {
      await customSelect(
              "select * from compras where idCompra = '${aux.compra}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Compra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Comprador id3;
    try {
      await customSelect(
              "select * from compradores where idComprador = '${id2.comprador}' LIMIT 1;")
          .get()
          .then((row) {
        id3 = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id4;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${id2.localDeCompra}' LIMIT 1;")
          .get()
          .then((row) {
        id4 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    ModelItensCompra modelItensComprados;
    Item aux2;
    String sqlString2 =
        "select * from itens where idItem = ${aux.itemComprado} LIMIT 1;";
    try {
      await customSelect(sqlString2, readsFrom: {db.itens}).get().then((row) {
        aux2 = Item.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    modelItensComprados = ModelItensCompra(
        idItensCompra: aux.idItensCompra,
        compra: ModelCompra(
            comprador: ModelComprador(
                nome: id3.nome,
                idComprador: id3.idComprador,
                createdAt: DateTime.parse(id3.createdAt),
                updatedAt: DateTime.parse(id3.updatedAt)),
            createdAt: DateTime.parse(id2.createdAt),
            updatedAt: DateTime.parse(id2.updatedAt),
            idCompra: id2.idCompra,
            nomeCompra: id2.nomeCompra,
            localDeCompra: ModelLocalizacao(
              nome: id4.nome,
              idLocal: id4.idLocal,
              createdAt: DateTime.parse(id4.createdAt),
              updatedAt: DateTime.parse(id4.updatedAt),
            )),
        itemComprado: ModelItem(
            nome: aux2.nome,
            idItem: aux2.idItem,
            preco: aux2.preco,
            idLocal: ModelLocalizacao(
              nome: id4.nome,
              idLocal: id4.idLocal,
              createdAt: DateTime.parse(id4.createdAt),
              updatedAt: DateTime.parse(id4.updatedAt),
            ),
            createdAt: DateTime.parse(aux2.createdAt),
            updatedAt: DateTime.parse(aux2.updatedAt)),
        quantidadeComprada: aux.quantidadeComprada,
        createdAt: DateTime.parse(aux.createdAt),
        updatedAt: DateTime.parse(aux.updatedAt));
    return modelItensComprados;
  }

  @override
  Future put(int id, ModelItensCompra novoItensCompra) async {
    String sqlString = "UPDATE itensCompras SET " +
        "idItensCompra = '${novoItensCompra.idItensCompra}', "
            "compra = '${novoItensCompra.compra.idCompra}', " +
        "QuantidadeComprada = '${novoItensCompra.quantidadeComprada}', " +
        "itemComprado = '${novoItensCompra.itemComprado.idItem}', " +
        "updatedAt = '${DateTime.now()}', " +
        "WHERE idLocal = " +
        "'$id'"
            ";";
    int sucesso;
    try {
      sucesso = await customUpdate(sqlString,
          updates: {db.itensCompras}, updateKind: UpdateKind.update);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }

  @override
  Future remove(int id) async {
    String sqlString =
        "delete from itensCompras where idItensCompra = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.itensCompras}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return i;
  }

  @override
  Future<List<ModelItensCompra>> getItensCompraByCompra(int idCompra) async {
    String sqlString =
        "select * from itensCompras where compra = " + "'$idCompra';";
    List<ItensCompra> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.itensCompras})
          .get()
          .then((row) {
        row.forEach((value) {
          aux.add(ItensCompra.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    String sqlString2 = "";

    List<ModelItensCompra> modelItensComprados = [];
    Item aux2;
    Compra id2;
    Comprador id3;
    Localizacao id4;
    aux.forEach((value) async {
      sqlString2 =
          "select * from itens where idItem = ${value.itemComprado} LIMIT 1;";
      try {
        await customSelect(sqlString2, readsFrom: {db.itens}).get().then((row) {
          aux2 = Item.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }

      try {
        await customSelect(
                "select * from compras where idCompra = '${value.compra}' LIMIT 1;")
            .get()
            .then((row) {
          id2 = Compra.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from compradores where idComprador = '${id2.comprador}' LIMIT 1;")
            .get()
            .then((row) {
          id3 = Comprador.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from localizacoes where idLocal = '${id2.localDeCompra}' LIMIT 1;")
            .get()
            .then((row) {
          id4 = Localizacao.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      modelItensComprados.add(ModelItensCompra(
          idItensCompra: value.idItensCompra,
          compra: ModelCompra(
              comprador: ModelComprador(
                  nome: id3.nome,
                  idComprador: id3.idComprador,
                  createdAt: DateTime.parse(id3.createdAt),
                  updatedAt: DateTime.parse(id3.updatedAt)),
              createdAt: DateTime.parse(id2.createdAt),
              updatedAt: DateTime.parse(id2.updatedAt),
              idCompra: id2.idCompra,
              nomeCompra: id2.nomeCompra,
              localDeCompra: ModelLocalizacao(
                nome: id4.nome,
                idLocal: id4.idLocal,
                createdAt: DateTime.parse(id4.createdAt),
                updatedAt: DateTime.parse(id4.updatedAt),
              )),
          itemComprado: ModelItem(
              nome: aux2.nome,
              idItem: aux2.idItem,
              preco: aux2.preco,
              idLocal: ModelLocalizacao(
                nome: id4.nome,
                idLocal: id4.idLocal,
                createdAt: DateTime.parse(id4.createdAt),
                updatedAt: DateTime.parse(id4.updatedAt),
              ),
              createdAt: DateTime.parse(aux2.createdAt),
              updatedAt: DateTime.parse(aux2.updatedAt)),
          quantidadeComprada: value.quantidadeComprada,
          createdAt: DateTime.parse(value.createdAt),
          updatedAt: DateTime.parse(value.updatedAt)));
    });
    return modelItensComprados;
  }
}
