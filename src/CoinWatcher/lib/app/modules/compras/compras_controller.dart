import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'compras_controller.g.dart';

@Injectable()
class ComprasController = _ComprasControllerBase with _$ComprasController;

abstract class _ComprasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
