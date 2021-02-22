import 'package:CoinWatcher/app/models/item.dart';
import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IItens.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'itens_sqlite_dao.g.dart';

@UseDao(tables: [Item])
class ItensSQLiteDAO extends DatabaseAccessor<CoinWatcherDb>
    with _$ItensSQLiteDAOMixin
    implements IItem {
  ItensSQLiteDAO(CoinWatcherDb db) : super(db);
  @override
  Future addItem(ModelItem novoItem) async {
    var createdAt = DateTime.now();
    String sqlString =
        "insert into itens (nome, preco, localComprado, createdAt, updatedAt) values " +
            "('${novoItem.nome}','${novoItem.preco}','${novoItem.idLocal.idLocal}', '$createdAt', '${DateTime.now()}')" +
            ";";
    Item id;
    try {
      await customInsert(sqlString);
      await customSelect(
              "select * from itens where createdAt = '$createdAt' LIMIT 1;")
          .get()
          .then((row) {
        id = Item.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id2;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${id.localComprado}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelItem(
      idItem: id.idItem,
      idLocal: ModelLocalizacao(
          nome: id2.nome,
          idLocal: id2.idLocal,
          createdAt: DateTime.parse(id2.createdAt),
          updatedAt: DateTime.parse(id2.updatedAt)),
      nome: id.nome,
      preco: id.preco,
      createdAt: DateTime.parse(id.createdAt),
      updatedAt: DateTime.parse(id.updatedAt),
    );
  }

  @override
  Future remove(int id) async {
    String sqlString = "delete from itens where idItem = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.itens}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return i;
  }

  @override
  Future<List<ModelItem>> getAllItem() async {
    String sqlString = "select * from itens";
    List<Item> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.itens}).get().then((row) {
        row.forEach((value) {
          aux.add(Item.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    List<ModelItem> modelItens = [];
    Localizacao id2;
    aux.forEach((value) async {
      try {
        await customSelect(
                "select * from localizacoes where idLocal = '${value.localComprado}' LIMIT 1;")
            .get()
            .then((row) {
          id2 = Localizacao.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      modelItens.add(ModelItem(
          idItem: value.idItem,
          idLocal: ModelLocalizacao(
              nome: id2.nome,
              idLocal: id2.idLocal,
              createdAt: DateTime.parse(id2.createdAt),
              updatedAt: DateTime.parse(id2.updatedAt)),
          nome: value.nome,
          preco: value.preco,
          createdAt: DateTime.parse(value.createdAt),
          updatedAt: DateTime.parse(value.updatedAt)));
    });
    return modelItens;
  }

  @override
  Future<ModelItem> getItem(int id) async {
    String sqlString = "select * from itens where idItem = " +
        "'$id'"
            "LIMIT 1;";
    Item aux;
    try {
      await customSelect(sqlString, readsFrom: {db.itens}).get().then((row) {
        aux = Item.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id2;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${aux.localComprado}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelItem(
        idItem: aux.idItem,
        idLocal: ModelLocalizacao(
            nome: id2.nome,
            idLocal: id2.idLocal,
            createdAt: DateTime.parse(id2.createdAt),
            updatedAt: DateTime.parse(id2.updatedAt)),
        nome: aux.nome,
        preco: aux.preco,
        createdAt: DateTime.parse(aux.createdAt),
        updatedAt: DateTime.parse(aux.updatedAt));
  }

  @override
  Future put(int id, ModelItem novoItem) async {
    String sqlString = "UPDATE itens SET " +
        "idLocal = '${novoItem.idLocal.idLocal}', "
            "nome = '${novoItem.nome}', " +
        "preco = '${novoItem.preco}', " +
        "localComprado = '${novoItem.idLocal}', " +
        "updatedAt = '${DateTime.now()}'" +
        "WHERE idLocal = " +
        "'$id'"
            ";";
    int sucesso;
    try {
      sucesso = await customUpdate(sqlString,
          updates: {db.itens}, updateKind: UpdateKind.update);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }
}
