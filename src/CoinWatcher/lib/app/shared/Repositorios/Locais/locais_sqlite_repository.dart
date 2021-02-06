import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ILocais.dart';

class LocalizacoesSQLiteRepository implements ILocalizacao {
  @override
  Future addLocal(ModelLocalizacao novoLocal) {
    // TODO: implement addLocal
    throw UnimplementedError();
  }

  @override
  Future remove(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ModelLocalizacao>> getAllLocal() {
    // TODO: implement getAllLocal
    throw UnimplementedError();
  }

  @override
  Future<ModelLocalizacao> getLocal(int id) {
    // TODO: implement getLocal
    throw UnimplementedError();
  }

  @override
  Future put(int id, ModelLocalizacao novoLocal) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
