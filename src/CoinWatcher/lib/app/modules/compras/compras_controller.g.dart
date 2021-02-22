// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compras_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ComprasController = BindInject(
  (i) => ComprasController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComprasController on _ComprasControllerBase, Store {
  final _$buscaAtom = Atom(name: '_ComprasControllerBase.busca');

  @override
  String get busca {
    _$buscaAtom.reportRead();
    return super.busca;
  }

  @override
  set busca(String value) {
    _$buscaAtom.reportWrite(value, super.busca, () {
      super.busca = value;
    });
  }

  final _$custoTotalAtom = Atom(name: '_ComprasControllerBase.custoTotal');

  @override
  double get custoTotal {
    _$custoTotalAtom.reportRead();
    return super.custoTotal;
  }

  @override
  set custoTotal(double value) {
    _$custoTotalAtom.reportWrite(value, super.custoTotal, () {
      super.custoTotal = value;
    });
  }

  final _$itensPorLocalAtom =
      Atom(name: '_ComprasControllerBase.itensPorLocal');

  @override
  int get itensPorLocal {
    _$itensPorLocalAtom.reportRead();
    return super.itensPorLocal;
  }

  @override
  set itensPorLocal(int value) {
    _$itensPorLocalAtom.reportWrite(value, super.itensPorLocal, () {
      super.itensPorLocal = value;
    });
  }

  final _$detalhesCompraAtom =
      Atom(name: '_ComprasControllerBase.detalhesCompra');

  @override
  ModelCompra get detalhesCompra {
    _$detalhesCompraAtom.reportRead();
    return super.detalhesCompra;
  }

  @override
  set detalhesCompra(ModelCompra value) {
    _$detalhesCompraAtom.reportWrite(value, super.detalhesCompra, () {
      super.detalhesCompra = value;
    });
  }

  final _$detalhesItemAtom = Atom(name: '_ComprasControllerBase.detalhesItem');

  @override
  ModelItem get detalhesItem {
    _$detalhesItemAtom.reportRead();
    return super.detalhesItem;
  }

  @override
  set detalhesItem(ModelItem value) {
    _$detalhesItemAtom.reportWrite(value, super.detalhesItem, () {
      super.detalhesItem = value;
    });
  }

  final _$loadingAtom = Atom(name: '_ComprasControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$criarCompraCurrentStepAtom =
      Atom(name: '_ComprasControllerBase.criarCompraCurrentStep');

  @override
  int get criarCompraCurrentStep {
    _$criarCompraCurrentStepAtom.reportRead();
    return super.criarCompraCurrentStep;
  }

  @override
  set criarCompraCurrentStep(int value) {
    _$criarCompraCurrentStepAtom
        .reportWrite(value, super.criarCompraCurrentStep, () {
      super.criarCompraCurrentStep = value;
    });
  }

  final _$criarCompraStepsAtom =
      Atom(name: '_ComprasControllerBase.criarCompraSteps');

  @override
  int get criarCompraSteps {
    _$criarCompraStepsAtom.reportRead();
    return super.criarCompraSteps;
  }

  @override
  set criarCompraSteps(int value) {
    _$criarCompraStepsAtom.reportWrite(value, super.criarCompraSteps, () {
      super.criarCompraSteps = value;
    });
  }

  final _$itensCompraAtom = Atom(name: '_ComprasControllerBase.itensCompra');

  @override
  ObservableList<ModelItensCompra> get itensCompra {
    _$itensCompraAtom.reportRead();
    return super.itensCompra;
  }

  @override
  set itensCompra(ObservableList<ModelItensCompra> value) {
    _$itensCompraAtom.reportWrite(value, super.itensCompra, () {
      super.itensCompra = value;
    });
  }

  final _$comprasAtom = Atom(name: '_ComprasControllerBase.compras');

  @override
  ObservableList<ModelCompra> get compras {
    _$comprasAtom.reportRead();
    return super.compras;
  }

  @override
  set compras(ObservableList<ModelCompra> value) {
    _$comprasAtom.reportWrite(value, super.compras, () {
      super.compras = value;
    });
  }

  final _$comprasFiltradasAtom =
      Atom(name: '_ComprasControllerBase.comprasFiltradas');

  @override
  ObservableList<ModelCompra> get comprasFiltradas {
    _$comprasFiltradasAtom.reportRead();
    return super.comprasFiltradas;
  }

  @override
  set comprasFiltradas(ObservableList<ModelCompra> value) {
    _$comprasFiltradasAtom.reportWrite(value, super.comprasFiltradas, () {
      super.comprasFiltradas = value;
    });
  }

  final _$custoTotalCompraAsyncAction =
      AsyncAction('_ComprasControllerBase.custoTotalCompra');

  @override
  Future custoTotalCompra(int idCompra) {
    return _$custoTotalCompraAsyncAction
        .run(() => super.custoTotalCompra(idCompra));
  }

  final _$editarCompraAsyncAction =
      AsyncAction('_ComprasControllerBase.editarCompra');

  @override
  Future editarCompra(ModelCompra compra, String novoNome, String novoComprador,
      String novoLocal) {
    return _$editarCompraAsyncAction.run(
        () => super.editarCompra(compra, novoNome, novoComprador, novoLocal));
  }

  final _$numeroItensPorLocalAsyncAction =
      AsyncAction('_ComprasControllerBase.numeroItensPorLocal');

  @override
  Future numeroItensPorLocal(int idLocal) {
    return _$numeroItensPorLocalAsyncAction
        .run(() => super.numeroItensPorLocal(idLocal));
  }

  final _$createCompraAsyncAction =
      AsyncAction('_ComprasControllerBase.createCompra');

  @override
  Future createCompra(
      String compradorNome, String compraNome, String localDeCompra) {
    return _$createCompraAsyncAction.run(
        () => super.createCompra(compradorNome, compraNome, localDeCompra));
  }

  final _$getAllCompradoresAsyncAction =
      AsyncAction('_ComprasControllerBase.getAllCompradores');

  @override
  Future<List<ModelComprador>> getAllCompradores() {
    return _$getAllCompradoresAsyncAction.run(() => super.getAllCompradores());
  }

  final _$deleteCompradorAsyncAction =
      AsyncAction('_ComprasControllerBase.deleteComprador');

  @override
  Future<int> deleteComprador(int id) {
    return _$deleteCompradorAsyncAction.run(() => super.deleteComprador(id));
  }

  final _$getComprasAsyncAction =
      AsyncAction('_ComprasControllerBase.getCompras');

  @override
  Future getCompras() {
    return _$getComprasAsyncAction.run(() => super.getCompras());
  }

  final _$_ComprasControllerBaseActionController =
      ActionController(name: '_ComprasControllerBase');

  @override
  dynamic buscar(String busca) {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.buscar');
    try {
      return super.buscar(busca);
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeCompra(int indexCompra) {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.removeCompra');
    try {
      return super.removeCompra(indexCompra);
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic goTo(int step) {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.goTo');
    try {
      return super.goTo(step);
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addItemToList(ModelItensCompra newItem) {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.addItemToList');
    try {
      return super.addItemToList(newItem);
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItemFromList(int index) {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.removeItemFromList');
    try {
      return super.removeItemFromList(index);
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic nextStep() {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.nextStep');
    try {
      return super.nextStep();
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic previousStep() {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.previousStep');
    try {
      return super.previousStep();
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
busca: ${busca},
custoTotal: ${custoTotal},
itensPorLocal: ${itensPorLocal},
detalhesCompra: ${detalhesCompra},
detalhesItem: ${detalhesItem},
loading: ${loading},
criarCompraCurrentStep: ${criarCompraCurrentStep},
criarCompraSteps: ${criarCompraSteps},
itensCompra: ${itensCompra},
compras: ${compras},
comprasFiltradas: ${comprasFiltradas}
    ''';
  }
}
