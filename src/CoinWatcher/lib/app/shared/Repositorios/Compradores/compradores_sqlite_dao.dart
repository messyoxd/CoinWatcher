import 'package:CoinWatcher/app/models/comprador.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IComprador.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'compradores_sqlite_dao.g.dart';

@UseDao(tables: [Comprador])
class CompradoresSQLiteDAO extends DatabaseAccessor<CoinWatcherDb>
    with _$CompradoresSQLiteDAOMixin
    implements IComprador {
  CompradoresSQLiteDAO(CoinWatcherDb db) : super(db);

  @override
  Future addComprador(ModelComprador novoComprador) async {
    String sqlString =
        "insert into compradores (nome, createdAt, updatedAt) values " +
            "('${novoComprador.nome}', '${DateTime.now()}', '${DateTime.now()}')" +
            ";";
    try {
      await customInsert(sqlString);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future remove(int id) async {
    // TODO: implement delete
    String sqlString =
        "delete from compradores where idComprador = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.compradores}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
    }
    print(i);
    return i;
  }

  @override
  Future<List<ModelComprador>> getAllComprador() async {
    // TODO: implement getAllComprador
    String sqlString = "select * from compradores";
    List<Comprador> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.compradores})
          .get()
          .then((row) {
        row.forEach((value) {
          aux.add(Comprador.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      return [];
    }

    List<ModelComprador> modelCompradores = [];
    aux.forEach((value) {
      modelCompradores.add(ModelComprador(
          idComprador: value.idComprador,
          nome: value.nome,
          createdAt: DateTime.parse(value.createdAt),
          updatedAt: DateTime.parse(value.updatedAt)));
    });
    return modelCompradores;
  }

  @override
  Future<ModelComprador> getComprador(int id) {
    // TODO: implement getComprador
    throw UnimplementedError();
  }

  @override
  Future put(int id, ModelComprador novoComprador) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
