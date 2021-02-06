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

  final _$getAllCompradoresAsyncAction =
      AsyncAction('_ComprasControllerBase.getAllCompradores');

  @override
  Future<List<ModelComprador>> getAllCompradores() {
    return _$getAllCompradoresAsyncAction.run(() => super.getAllCompradores());
  }

  final _$_ComprasControllerBaseActionController =
      ActionController(name: '_ComprasControllerBase');

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
value: ${value}
    ''';
  }
}
