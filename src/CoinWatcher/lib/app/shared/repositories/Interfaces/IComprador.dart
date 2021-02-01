import '../../../modules/compras/models/comprador.dart';

abstract class IComprador {
  Future addComprador(Comprador novoComprador);
  Future<Comprador> getComprador(int id);
  Future<List<Comprador>> getAllComprador();
  Future put(int id, Comprador novoComprador);
  Future delete(int id);
}
