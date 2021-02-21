import 'package:CoinWatcher/app/models/comprador.dart';
import 'package:CoinWatcher/app/models/compras.dart';
import 'package:CoinWatcher/app/models/item.dart';
import 'package:CoinWatcher/app/models/itens_compra.dart';
import 'package:CoinWatcher/app/models/localizacao.dart';
import 'package:CoinWatcher/app/modules/database/database_sqlite/database.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IComprador.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ICompras.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IItens.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/IItensCompras.dart';
import 'package:CoinWatcher/app/shared/InterfacesRepositorios/ILocais.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'compras_controller.g.dart';

@Injectable()
class ComprasController = _ComprasControllerBase with _$ComprasController;

abstract class _ComprasControllerBase with Store {
  
  final IComprador compradorRepository = Modular.get();

  final ICompra compraRepository = Modular.get();

  final ILocalizacao localizacaoRepository = Modular.get();

  final IItem itemRepository = Modular.get();

  final IItensCompra itensCompraRepository = Modular.get();

  @observable
  int value = 0;

  @observable
  int criarCompraCurrentStep = 0;

  @observable
  int criarCompraSteps = 2;

  @observable
  ObservableList<ModelItensCompra> itensCompra = ObservableList<ModelItensCompra>().asObservable();

  @action
  goTo(int step){
    criarCompraCurrentStep = step;
  }

  @action
  addItemToList(ModelItensCompra newItem){
    itensCompra.add(newItem);
  }
  @action
  removeItemFromList(int index){
    itensCompra.removeAt(index);
  }

  @action
  createCompra(String compradorNome, String compraNome, String localDeCompra) async {
    ModelComprador aux1;
    try {
      aux1 = await compradorRepository.getCompradorByName(compradorNome);
    } catch (e) {
      print(e.toString());
    }
    if (aux1 == null){
      // criar comprador
      aux1 = await compradorRepository.addComprador(
        ModelComprador(
          nome: compradorNome 
        )
      );
    }
    // 2º buscar localizacao com mesmo nome ou cria-lo
    ModelLocalizacao aux2;
    try {
      aux2 = await localizacaoRepository.getLocalByName(compradorNome);
    } catch (e) {
      print(e.toString());
    }
    if (aux2 == null){
      // criar comprador
      aux2 = await localizacaoRepository.addLocal(
        ModelLocalizacao(
          nome: compradorNome 
        )
      );
    }
    // 3º criar compra
    ModelCompra compra = await compraRepository.addCompra(ModelCompra(
      comprador: aux1.idComprador,
      localDeCompra: aux2.idLocal,
      nomeCompra: compraNome,
    ));
    // 4º verificar se há itens e inseri-los associados à compra
    List<ModelItem> itens = [];
    List<ModelItensCompra> itensCompra = [];
    itensCompra.forEach((item){
      itens.add(item.itemComprado);
      itensCompra.add(item);
    });
    ModelItem aux3;
    // ModelItensCompra aux4;
    for (var i = 0; i < itens.length; i++) {
      itens[i].idLocal = aux2.idLocal;
      aux3 = await itemRepository.addItem(
        itens[i]
      );
      itensCompra[i].itemComprado = aux3;
      itensCompra[i].compra = compra.idCompra;
      await itensCompraRepository.addItensCompra(itensCompra[i]);
    }
    
  }

  @action
  nextStep(){
    if(criarCompraCurrentStep != criarCompraSteps - 1){
      criarCompraCurrentStep++; 
    }else{
      print("fim do cadastro de compra");
    }
  }
  @action
  previousStep(){
    if(criarCompraCurrentStep > 0){
      criarCompraCurrentStep--;
    }
  }


  @action
  void increment() {
    value++;
  }

  @action
  void addComprador() {
    compradorRepository
        .addComprador(ModelComprador(nome: "Teste"));
  }

  @action
  Future<List<ModelComprador>> getAllCompradores() async {
    return await compradorRepository.getAllComprador();
  }

  @action
  Future<int> deleteComprador(int id) async {
    return await compradorRepository.remove(id) as int;
  }
}
