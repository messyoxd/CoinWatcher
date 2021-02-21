import 'package:CoinWatcher/app/models/compras.dart';
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
    String sqlString =
        "insert into compras (localDeCompra, comprador, nomeCompra, createdAt, updatedAt) values " +
            "('${novaCompra.localDeCompra}', '${novaCompra.comprador}', '${novaCompra.nomeCompra}', '${DateTime.now()}', '${DateTime.now()}')" +
            ";";
    int sucesso;
    try {
      sucesso = await customInsert(sqlString);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }

  @override
  Future remove(int id) async {
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
    aux.forEach((value) {
      modelCompradores.add(ModelCompra(
          idCompra: value.idCompra,
          localDeCompra: value.localDeCompra,
          comprador: value.comprador,
          nomeCompra: value.nomeCompra,
          createdAt: DateTime.parse(value.createdAt),
          updatedAt: DateTime.parse(value.updatedAt)));
    });
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

    return ModelCompra(
      idCompra: aux.idCompra,
      localDeCompra: aux.localDeCompra,
      comprador: aux.comprador,
      nomeCompra: aux.nomeCompra,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }

  @override
  Future put(int id, ModelCompra novaCompra) async {
    String sqlString = "UPDATE compras SET " +
        "nomeCompra = '${novaCompra.nomeCompra}'" +
        "localDeCompra = '${novaCompra.localDeCompra}'" +
        "comprador = '${novaCompra.comprador}'" +
        "updatedAt = '${DateTime.now()}'" +
        "WHERE idComprador = " +
        "'$id'"
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
}
