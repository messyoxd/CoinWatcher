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
  final _$valueAtom = Atom(name: '_ComprasControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
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

  final _$_ComprasControllerBaseActionController =
      ActionController(name: '_ComprasControllerBase');

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
  void increment() {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addComprador() {
    final _$actionInfo = _$_ComprasControllerBaseActionController.startAction(
        name: '_ComprasControllerBase.addComprador');
    try {
      return super.addComprador();
    } finally {
      _$_ComprasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
criarCompraCurrentStep: ${criarCompraCurrentStep},
criarCompraSteps: ${criarCompraSteps},
itensCompra: ${itensCompra}
    ''';
  }
}
