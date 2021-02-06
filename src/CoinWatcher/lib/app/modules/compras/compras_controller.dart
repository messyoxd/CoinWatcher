import 'package:CoinWatcher/app/models/comprador.dart';
import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IComprador.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'compras_controller.g.dart';

@Injectable()
class ComprasController = _ComprasControllerBase with _$ComprasController;

abstract class _ComprasControllerBase with Store {
  final IComprador compradorRepository = Modular.get();

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void addComprador() {
    compradorRepository
        .addComprador(ModelComprador(idComprador: 1, nome: "Teste"));
  }

  @action
  Future<List<ModelComprador>> getAllCompradores() async {
    return await compradorRepository.getAllComprador();
  }
}
