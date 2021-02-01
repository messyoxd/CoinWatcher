import '../../../modules/compras/models/local.dart';

abstract class ILocal {
  Future addLocal(Local novoLocal);
  Future<Local> getLocal(int id);
  Future<List<Local>> getAllLocal();
  Future put(int id, Local novoLocal);
  Future delete(int id);
}
