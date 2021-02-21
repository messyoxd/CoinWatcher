import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ILocais.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'locais_sqlite_dao.g.dart';

@UseDao(tables: [Localizacao])
class LocalizacoesSQLiteDAO extends DatabaseAccessor<CoinWatcherDb>
    with _$LocalizacoesSQLiteDAOMixin
    implements ILocalizacao {
  LocalizacoesSQLiteDAO(CoinWatcherDb db) : super(db);
  @override
  Future addLocal(ModelLocalizacao novoLocal) async {
    var createdAt = DateTime.now();
    String sqlString =
        "insert into localizacoes (nome, createdAt, updatedAt) values " +
            "('${novoLocal.nome}', '$createdAt', '${DateTime.now()}')" +
            ";";
    Localizacao id;
    try {
      await customInsert(sqlString);
      await customSelect("select * from localizacoes where createdAt = '$createdAt' LIMIT 1;").get().then((row){
        id = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return id;
  }

  @override
  Future remove(int id) async {
    String sqlString =
        "delete from localizacoes where idLocal = " + "'$id'" + ";";
    int i;
    try {
      i = await customUpdate(sqlString,
          updates: {db.localizacoes}, updateKind: UpdateKind.delete);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return i;
  }

  @override
  Future<List<ModelLocalizacao>> getAllLocal() async {
    String sqlString = "select * from localizacoes";
    List<Localizacao> aux = [];
    try {
      await customSelect(sqlString, readsFrom: {db.localizacoes})
          .get()
          .then((row) {
        row.forEach((value) {
          aux.add(Localizacao.fromData(value.data, db));
        });
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    List<ModelLocalizacao> modelLocais = [];
    aux.forEach((value) {
      modelLocais.add(ModelLocalizacao(
          idLocal: value.idLocal,
          nome: value.nome,
          createdAt: DateTime.parse(value.createdAt),
          updatedAt: DateTime.parse(value.updatedAt)));
    });
    return modelLocais;
  }

  @override
  Future<ModelLocalizacao> getLocal(int id) async {
    String sqlString = "select * from localizacoes where idLocal = " +
        "'$id'"
            "LIMIT 1;";
    Localizacao aux;
    try {
      await customSelect(sqlString, readsFrom: {db.localizacoes})
          .get()
          .then((row) {
        aux = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    return ModelLocalizacao(
      idLocal: aux.idLocal,
      nome: aux.nome,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }

  @override
  Future put(int id, ModelLocalizacao novoLocal) async {
    String sqlString = "UPDATE localizacoes SET " +
        "nome = '${novoLocal.nome}'" +
        "updatedAt = '${DateTime.now()}'" +
        "WHERE idLocal = " +
        "'$id'"
            ";";
    int sucesso;
    try {
      sucesso = await customUpdate(sqlString,
          updates: {db.localizacoes}, updateKind: UpdateKind.update);
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }
    return sucesso;
  }

  @override
  Future<ModelLocalizacao> getLocalByName(String name) async {
    String sqlString = "select * from localizacoes where nome = " +
        "'$name'"
            "LIMIT 1;";
    Localizacao aux;
    try {
      await customSelect(sqlString, readsFrom: {db.localizacoes})
          .get()
          .then((row) {
        aux = Localizacao.fromData(row.first.data, db);
      });
    } catch (e) {
      print(e.toString());
      throw (e.toString());
    }

    return ModelLocalizacao(
      idLocal: aux.idLocal,
      nome: aux.nome,
      createdAt: DateTime.parse(aux.createdAt),
      updatedAt: DateTime.parse(aux.updatedAt),
    );
  }
}
