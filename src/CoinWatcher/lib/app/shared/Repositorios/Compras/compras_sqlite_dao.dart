import 'package:CoinWatcher/app/models/comprador.dart';
import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ICompras.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'compras_sqlite_dao.g.dart';

@UseDao(tables: [Compras])
class ComprasSQLiteDAO extends DatabaseAccessor<CoinWatcherDb>
    with _$ComprasSQLiteDAOMixin
    implements ICompra {
  ComprasSQLiteDAO(CoinWatcherDb attachedDatabase) : super(attachedDatabase);

  @override
  Future addCompra(ModelCompra novaCompra) async {
    var createdAt = DateTime.now();
    String sqlString =
        "insert into compras (localDeCompra, comprador, nomeCompra, createdAt, updatedAt) values " +
            "('${novaCompra.localDeCompra.idLocal}', '${novaCompra.comprador.idComprador}', '${novaCompra.nomeCompra}', '$createdAt', '${DateTime.now()}')" +
            ";";
    Compra id;
    try {
      await customInsert(sqlString);
      await customSelect(
              "select * from compras where createdAt = '$createdAt' LIMIT 1;")
          .get()
          .then((row) {
        id = Compra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id2;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${id.localDeCompra}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Comprador id3;
    try {
      await customSelect(
              "select * from compradores where idComprador = '${id.comprador}' LIMIT 1;")
          .get()
          .then((row) {
        id3 = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelCompra(
        idCompra: id.idCompra,
        localDeCompra: ModelLocalizacao(
            nome: id2.nome,
            idLocal: id2.idLocal,
            createdAt: DateTime.parse(id2.createdAt),
            updatedAt: DateTime.parse(id2.updatedAt)),
        comprador: ModelComprador(
            nome: id3.nome,
            idComprador: id3.idComprador,
            createdAt: DateTime.parse(id3.createdAt),
            updatedAt: DateTime.parse(id3.updatedAt)),
        nomeCompra: id.nomeCompra,
        createdAt: DateTime.parse(id.createdAt),
        updatedAt: DateTime.parse(id.updatedAt));
  }

  @override
  Future remove(int id) async {
    List<ItensCompra> itens = [];
    try {
      await customSelect("select * from itensCompras where compra = '$id'")
          .get()
          .then((rows) {
        rows.forEach((row) {
          itens.add(ItensCompra.fromData(row.data, db));
        });
      });
      customSelect("DELETE from itensCompras where compra = '$id';");
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    try {
      itens.forEach((item) async {
        customSelect("DELETE from itens where idItem = ${item.itemComprado} LIMIT 1;");
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    String sqlString = "delete from compras where idCompra = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.compras}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return i;
  }

  @override
  Future<List<ModelCompra>> getAllCompras() async {
    String sqlString = "select * from compras";
    List<Compra> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.compras}).get().then((row) {
        row.forEach((value) {
          aux.add(Compra.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    List<ModelCompra> modelCompradores = [];
    Localizacao id2;
    Comprador id3;
    for (var i = 0; i < aux.length; i++) {
      try {
        await customSelect(
                "select * from localizacoes where idLocal = '${aux[i].localDeCompra}' LIMIT 1;")
            .get()
            .then((row) {
          id2 = Localizacao.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      try {
        await customSelect(
                "select * from compradores where idComprador = '${aux[i].comprador}' LIMIT 1;")
            .get()
            .then((row) {
          id3 = Comprador.fromData(row.first.data, db);
        });
      } catch (e) {
        print(e.toString());
        throw (e.toString());
      }
      modelCompradores.add(ModelCompra(
          idCompra: aux[i].idCompra,
          localDeCompra: ModelLocalizacao(
              nome: id2.nome,
              idLocal: id2.idLocal,
              createdAt: DateTime.parse(id2.createdAt),
              updatedAt: DateTime.parse(id2.updatedAt)),
          comprador: ModelComprador(
              nome: id3.nome,
              idComprador: id3.idComprador,
              createdAt: DateTime.parse(id3.createdAt),
              updatedAt: DateTime.parse(id3.updatedAt)),
          nomeCompra: aux[i].nomeCompra,
          createdAt: DateTime.parse(aux[i].createdAt),
          updatedAt: DateTime.parse(aux[i].updatedAt)));
    }
    return modelCompradores;
  }

  @override
  Future<ModelCompra> getCompra(int id) async {
    String sqlString = "select * from compras where idCompra = " +
        "'$id'"
            "LIMIT 1;";
    Compra aux;
    try {
      await customSelect(sqlString, readsFrom: {db.compras}).get().then((row) {
        aux = Compra.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Localizacao id2;
    try {
      await customSelect(
              "select * from localizacoes where idLocal = '${aux.localDeCompra}' LIMIT 1;")
          .get()
          .then((row) {
        id2 = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    Comprador id3;
    try {
      await customSelect(
              "select * from compradores where idComprador = '${aux.comprador}' LIMIT 1;")
          .get()
          .then((row) {
        id3 = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    return ModelCompra(
      idCompra: aux.idCompra,
      localDeCompra: ModelLocalizacao(
          nome: id2.nome,
          idLocal: id2.idLocal,
          createdAt: DateTime.parse(id2.createdAt),
          updatedAt: DateTime.parse(id2.updatedAt)),
      comprador: ModelComprador(
          nome: id3.nome,
          idComprador: id3.idComprador,
          createdAt: DateTime.parse(id3.createdAt),
          updatedAt: DateTime.parse(id3.updatedAt)),
      nomeCompra: aux.nomeCompra,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }

  @override
  Future put(int id, ModelCompra novaCompra) async {
    String sqlString = "UPDATE compras SET " +
        "nomeCompra = '${novaCompra.nomeCompra}', " +
        "localDeCompra = '${novaCompra.localDeCompra.idLocal}', " +
        "comprador = '${novaCompra.comprador.idComprador}', " +
        "updatedAt = '${DateTime.now()}' " +
        "WHERE idCompra = " +
        "$id"
            ";";
    int sucesso;
    try {
      sucesso = await customUpdate(sqlString,
          updates: {db.compras}, updateKind: UpdateKind.update);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }

  @override
  Future<double> calcularCustoTotal(int id) async {
    String sqlString =
        "select itemComprado, SUM(QuantidadeComprada*preco) as custoTotal from itensCompras, Itens " +
            "GROUP BY itemComprado HAVING Itens.idItem = itensCompras.itemComprado AND itensCompras.compra = $id ORDER BY custoTotal DESC;";
    String sqlString2 =
        "select itemComprado, QuantidadeComprada, preco, SUM(QuantidadeComprada*preco) as custoTotal from itensCompras, Itens where Itens.idItem = itensCompras.itemComprado AND itensCompras.compra = $id ORDER BY custoTotal DESC;";

    var res = List<Map<String, dynamic>>();
    try {
      await customSelect(sqlString2, readsFrom: {db.compras}).get().then((row) {
        res.add(row.first.data);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    var valor = res.first["custoTotal"];
    return valor as double;
  }

  @override
  Future<int> calcularQuantosItensLocal(int id) async {
    String sqlString = "select Count(idItem) as quantidadeItens from Itens " +
        "where Itens.localComprado IN " +
        "(Select idLocal from localizacoes where localizacoes.idLocal = $id);";

    var res = List<Map<String, dynamic>>();
    try {
      await customSelect(sqlString, readsFrom: {db.compras}).get().then((row) {
        res.add(row.first.data);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    var valor = res.first["quantidadeItens"];
    return valor;
  }
}
