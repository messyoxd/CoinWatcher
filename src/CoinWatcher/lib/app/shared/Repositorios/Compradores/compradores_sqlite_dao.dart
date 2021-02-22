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
    var createdAt = DateTime.now();
    String sqlString =
        "insert into compradores (nome, createdAt, updatedAt) values " +
            "('${novoComprador.nome}', '$createdAt', '${DateTime.now()}')" +
            ";";
    Comprador id;
    try {
      await customInsert(sqlString);
      await customSelect("select * from compradores where createdAt = '$createdAt' LIMIT 1;").get().then((row){
        id = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelComprador(
          idComprador: id.idComprador,
          nome: id.nome,
          createdAt: DateTime.parse(id.createdAt),
          updatedAt: DateTime.parse(id.updatedAt));
  }

  @override
  Future remove(int id) async {
    String sqlString =
        "delete from compradores where idComprador = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.compradores}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return i;
  }

  @override
  Future<List<ModelComprador>> getAllComprador() async {
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
      throw (e.toString());
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
  Future<ModelComprador> getCompradorByName(String nome) async {
    String sqlString = "select * from compradores where nome = " +
        "'$nome'"
            "LIMIT 1;";
    Comprador aux;
    try {
      await customSelect(sqlString, readsFrom: {db.compradores})
          .get()
          .then((row) {
        aux = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return ModelComprador(
      idComprador: aux.idComprador,
      nome: aux.nome,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }

  @override
  Future<ModelComprador> getComprador(int id) async {
    String sqlString = "select * from compradores where idComprador = " +
        "'$id'"
            "LIMIT 1;";
    Comprador aux;
    try {
      await customSelect(sqlString, readsFrom: {db.compradores})
          .get()
          .then((row) {
        aux = Comprador.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    return ModelComprador(
      idComprador: aux.idComprador,
      nome: aux.nome,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }

  @override
  Future put(int id, ModelComprador novoComprador) async {
    String sqlString = "UPDATE compradores SET " +
        "nome = '${novoComprador.nome}', " +
        "updatedAt = '${DateTime.now()}', " +
        "WHERE idComprador = " +
        "$id"
            ";";
    int sucesso;
    try {
      sucesso = await customUpdate(sqlString,
          updates: {db.compradores}, updateKind: UpdateKind.update);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }
}
