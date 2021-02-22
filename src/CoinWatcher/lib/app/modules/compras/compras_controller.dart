import 'dart:async';

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
  String busca = "";

  @action
  buscar(String busca) {
    this.busca = busca;
    comprasFiltradas.clear();
    var a = compras.where((item) => item.nomeCompra.startsWith(busca)).toList();
    a.forEach((value) {
      comprasFiltradas.add(value);
    });
    print("ok");
  }

  @observable
  double custoTotal = 0;

  @action
  custoTotalCompra(int idCompra) async {
    loading = true;
    custoTotal = await compraRepository.calcularCustoTotal(idCompra);
    loading = false;
  }

  @action
  editarCompra(ModelCompra compra, String novoNome, String novoComprador,
      String novoLocal) async {
    // var compra = detalhesCompra;

    if (novoNome.isNotEmpty) {
      compra.nomeCompra = novoNome;
    }

    if (novoComprador.isNotEmpty) {
      ModelComprador comprador;
      try {
        comprador = await compradorRepository.getCompradorByName(novoComprador);
      } catch (e) {}
      if (comprador != null) {
        compra.comprador = comprador;
      } else {
        var comprador = await compradorRepository
            .addComprador(ModelComprador(nome: novoComprador));
        compra.comprador = comprador;
      }
    }

    if (novoLocal.isNotEmpty) {
      ModelLocalizacao local;
      try {
        local = await localizacaoRepository.getLocalByName(novoLocal);
      } catch (e) {}
      if (local != null) {
        compra.localDeCompra = local;
      } else {
        var local = await localizacaoRepository
            .addLocal(ModelLocalizacao(nome: novoLocal));
        compra.localDeCompra = local;
      }
    }
    compraRepository.put(compra.idCompra, compra);
    detalhesCompra = compra;
    return 1;
  }

  @observable
  int itensPorLocal = 0;

  @action
  removeCompra(int indexCompra) {
    var compra = compras[indexCompra];
    compraRepository.remove(compra.idCompra);
    compras.removeAt(indexCompra);
  }

  @action
  numeroItensPorLocal(int idLocal) async {
    loading = true;
    itensPorLocal = await compraRepository.calcularQuantosItensLocal(idLocal);
    loading = false;
  }

  @observable
  ModelCompra detalhesCompra;

  @observable
  ModelItem detalhesItem;

  @observable
  bool loading = false;

  @observable
  int criarCompraCurrentStep = 0;

  @observable
  int criarCompraSteps = 2;

  @observable
  ObservableList<ModelItensCompra> itensCompra =
      ObservableList<ModelItensCompra>().asObservable();

  @action
  goTo(int step) {
    criarCompraCurrentStep = step;
  }

  @action
  addItemToList(ModelItensCompra newItem) {
    itensCompra.add(newItem);
  }

  @action
  removeItemFromList(int index) {
    itensCompra.removeAt(index);
  }

  @action
  createCompra(
      String compradorNome, String compraNome, String localDeCompra) async {
    loading = true;
    ModelComprador aux1;
    try {
      aux1 = await compradorRepository.getCompradorByName(compradorNome);
    } catch (e) {
      print(e.toString());
    }
    if (aux1 == null) {
      // criar comprador
      aux1 = await compradorRepository
          .addComprador(ModelComprador(nome: compradorNome));
    }
    // 2º buscar localizacao com mesmo nome ou cria-lo
    ModelLocalizacao aux2;
    try {
      aux2 = await localizacaoRepository.getLocalByName(localDeCompra);
    } catch (e) {
      print(e.toString());
    }
    if (aux2 == null) {
      // criar comprador
      aux2 = await localizacaoRepository
          .addLocal(ModelLocalizacao(nome: localDeCompra));
    }
    // 3º criar compra
    ModelCompra compra = await compraRepository.addCompra(ModelCompra(
      comprador: aux1,
      localDeCompra: aux2,
      nomeCompra: compraNome,
    ));
    // 4º verificar se há itens e inseri-los associados à compra
    List<ModelItem> itens = [];
    List<ModelItensCompra> itensCompras = [];
    itensCompra.forEach((item) {
      itens.add(item.itemComprado);
      itensCompras.add(item);
    });
    ModelItem aux3;
    // ModelItensCompra aux4;
    for (var i = 0; i < itens.length; i++) {
      itens[i].idLocal = aux2;
      aux3 = await itemRepository.addItem(itens[i]);
      itensCompras[i].itemComprado = aux3;
      itensCompras[i].compra = compra;
      await itensCompraRepository.addItensCompra(itensCompras[i]);
    }
    itensCompra.clear();
    loading = false;
  }

  @action
  nextStep() {
    if (criarCompraCurrentStep != criarCompraSteps - 1) {
      criarCompraCurrentStep++;
    } else {
      print("fim do cadastro de compra");
    }
  }

  @action
  previousStep() {
    if (criarCompraCurrentStep > 0) {
      criarCompraCurrentStep--;
    }
  }

  @action
  Future<List<ModelComprador>> getAllCompradores() async {
    return await compradorRepository.getAllComprador();
  }

  @action
  Future<int> deleteComprador(int id) async {
    return await compradorRepository.remove(id) as int;
  }

  @observable
  ObservableList<ModelCompra> compras =
      ObservableList<ModelCompra>().asObservable();

  @observable
  ObservableList<ModelCompra> comprasFiltradas =
      ObservableList<ModelCompra>().asObservable();

  @action
  getCompras() async {
    loading = true;
    compras.clear();
    var d = await compraRepository.getAllCompras();
    d.forEach((value) {
      compras.add(value);
    });
    loading = false;
  }
}
