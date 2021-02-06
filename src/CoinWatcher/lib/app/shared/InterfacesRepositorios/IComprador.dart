import 'package:CoinWatcher/app/models/comprador.dart';

abstract class IComprador {
  Future addComprador(ModelComprador novoComprador);
  Future<ModelComprador> getComprador(int id);
  Future<List<ModelComprador>> getAllComprador();
  Future put(int id, ModelComprador novoComprador);
  Future remove(int id);
}
