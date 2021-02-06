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

    String sqlString = "insert into compradores (nome) values "+
      "('${novoComprador.nome}')" +
    ";";
    try {
      await customInsert(sqlString);
      
    } catch (e) {
      print(e.toString());
    }

    // into(db.compradores).insert(Comprador(
    //     idComprador: novoComprador.idComprador, nome: novoComprador.nome));
  }

  @override
  Future remove(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ModelComprador>> getAllComprador() async {
    // TODO: implement getAllComprador
    // var comprador = await (select(db.compradores)).get();
    String sqlString = "select * from compradores";
    List<Comprador> aux = [];
    await customSelect(sqlString, readsFrom: {db.compradores})
        .get()
        .then((row) {
      row.forEach((value) {
        aux.add(Comprador.fromData(value.data, db));
      });
    });

    List<ModelComprador> modelCompradores = [];
    aux.forEach((value) {
      modelCompradores.add(
          ModelComprador(idComprador: value.idComprador, nome: value.nome));
    });
    return modelCompradores;
    // return customSelect(
    //   "SELECT * FROM Compradores;",
    //   readsFrom: {Comprador},
    // );
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
