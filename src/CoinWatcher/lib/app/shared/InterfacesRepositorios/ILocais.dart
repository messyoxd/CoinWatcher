import 'package:CoinWatcher/app/models/localizacao.dart';

abstract class ILocalizacao {
  Future addLocal(ModelLocalizacao novoLocal);
  Future<ModelLocalizacao> getLocal(int id);
  Future<List<ModelLocalizacao>> getAllLocal();
  Future put(int id, ModelLocalizacao novoLocal);
  Future remove(int id);
}
