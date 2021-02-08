// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Comprador extends DataClass implements Insertable<Comprador> {
  final int idComprador;
  final String nome;
  final String createdAt;
  final String updatedAt;
  Comprador(
      {@required this.idComprador,
      @required this.nome,
      this.createdAt,
      this.updatedAt});
  factory Comprador.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Comprador(
      idComprador: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}idComprador']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      createdAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt']),
      updatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}updatedAt']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idComprador != null) {
      map['idComprador'] = Variable<int>(idComprador);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || createdAt != null) {
      map['createdAt'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updatedAt'] = Variable<String>(updatedAt);
    }
    return map;
  }

  CompradoresCompanion toCompanion(bool nullToAbsent) {
    return CompradoresCompanion(
      idComprador: idComprador == null && nullToAbsent
          ? const Value.absent()
          : Value(idComprador),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Comprador.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Comprador(
      idComprador: serializer.fromJson<int>(json['idComprador']),
      nome: serializer.fromJson<String>(json['nome']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idComprador': serializer.toJson<int>(idComprador),
      'nome': serializer.toJson<String>(nome),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  Comprador copyWith(
          {int idComprador, String nome, String createdAt, String updatedAt}) =>
      Comprador(
        idComprador: idComprador ?? this.idComprador,
        nome: nome ?? this.nome,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Comprador(')
          ..write('idComprador: $idComprador, ')
          ..write('nome: $nome, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(idComprador.hashCode,
      $mrjc(nome.hashCode, $mrjc(createdAt.hashCode, updatedAt.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Comprador &&
          other.idComprador == this.idComprador &&
          other.nome == this.nome &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CompradoresCompanion extends UpdateCompanion<Comprador> {
  final Value<int> idComprador;
  final Value<String> nome;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  const CompradoresCompanion({
    this.idComprador = const Value.absent(),
    this.nome = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CompradoresCompanion.insert({
    this.idComprador = const Value.absent(),
    @required String nome,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<Comprador> custom({
    Expression<int> idComprador,
    Expression<String> nome,
    Expression<String> createdAt,
    Expression<String> updatedAt,
  }) {
    return RawValuesInsertable({
      if (idComprador != null) 'idComprador': idComprador,
      if (nome != null) 'nome': nome,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  CompradoresCompanion copyWith(
      {Value<int> idComprador,
      Value<String> nome,
      Value<String> createdAt,
      Value<String> updatedAt}) {
    return CompradoresCompanion(
      idComprador: idComprador ?? this.idComprador,
      nome: nome ?? this.nome,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idComprador.present) {
      map['idComprador'] = Variable<int>(idComprador.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<String>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompradoresCompanion(')
          ..write('idComprador: $idComprador, ')
          ..write('nome: $nome, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class Compradores extends Table with TableInfo<Compradores, Comprador> {
  final GeneratedDatabase _db;
  final String _alias;
  Compradores(this._db, [this._alias]);
  final VerificationMeta _idCompradorMeta =
      const VerificationMeta('idComprador');
  GeneratedIntColumn _idComprador;
  GeneratedIntColumn get idComprador =>
      _idComprador ??= _constructIdComprador();
  GeneratedIntColumn _constructIdComprador() {
    return GeneratedIntColumn('idComprador', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedTextColumn _createdAt;
  GeneratedTextColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedTextColumn _constructCreatedAt() {
    return GeneratedTextColumn('createdAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedTextColumn _updatedAt;
  GeneratedTextColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedTextColumn _constructUpdatedAt() {
    return GeneratedTextColumn('updatedAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idComprador, nome, createdAt, updatedAt];
  @override
  Compradores get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'Compradores';
  @override
  final String actualTableName = 'Compradores';
  @override
  VerificationContext validateIntegrity(Insertable<Comprador> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idComprador')) {
      context.handle(
          _idCompradorMeta,
          idComprador.isAcceptableOrUnknown(
              data['idComprador'], _idCompradorMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt'], _createdAtMeta));
    }
    if (data.containsKey('updatedAt')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updatedAt'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idComprador};
  @override
  Comprador map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Comprador.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Compradores createAlias(String alias) {
    return Compradores(_db, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY (idComprador)'];
  @override
  bool get dontWriteConstraints => true;
}

class Localizacao extends DataClass implements Insertable<Localizacao> {
  final int idLocal;
  final String nome;
  final String createdAt;
  final String updatedAt;
  Localizacao(
      {@required this.idLocal,
      @required this.nome,
      this.createdAt,
      this.updatedAt});
  factory Localizacao.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Localizacao(
      idLocal:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idLocal']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      createdAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt']),
      updatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}updatedAt']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idLocal != null) {
      map['idLocal'] = Variable<int>(idLocal);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || createdAt != null) {
      map['createdAt'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updatedAt'] = Variable<String>(updatedAt);
    }
    return map;
  }

  LocalizacoesCompanion toCompanion(bool nullToAbsent) {
    return LocalizacoesCompanion(
      idLocal: idLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(idLocal),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Localizacao.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Localizacao(
      idLocal: serializer.fromJson<int>(json['idLocal']),
      nome: serializer.fromJson<String>(json['nome']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idLocal': serializer.toJson<int>(idLocal),
      'nome': serializer.toJson<String>(nome),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  Localizacao copyWith(
          {int idLocal, String nome, String createdAt, String updatedAt}) =>
      Localizacao(
        idLocal: idLocal ?? this.idLocal,
        nome: nome ?? this.nome,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Localizacao(')
          ..write('idLocal: $idLocal, ')
          ..write('nome: $nome, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(idLocal.hashCode,
      $mrjc(nome.hashCode, $mrjc(createdAt.hashCode, updatedAt.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Localizacao &&
          other.idLocal == this.idLocal &&
          other.nome == this.nome &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class LocalizacoesCompanion extends UpdateCompanion<Localizacao> {
  final Value<int> idLocal;
  final Value<String> nome;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  const LocalizacoesCompanion({
    this.idLocal = const Value.absent(),
    this.nome = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  LocalizacoesCompanion.insert({
    this.idLocal = const Value.absent(),
    @required String nome,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<Localizacao> custom({
    Expression<int> idLocal,
    Expression<String> nome,
    Expression<String> createdAt,
    Expression<String> updatedAt,
  }) {
    return RawValuesInsertable({
      if (idLocal != null) 'idLocal': idLocal,
      if (nome != null) 'nome': nome,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  LocalizacoesCompanion copyWith(
      {Value<int> idLocal,
      Value<String> nome,
      Value<String> createdAt,
      Value<String> updatedAt}) {
    return LocalizacoesCompanion(
      idLocal: idLocal ?? this.idLocal,
      nome: nome ?? this.nome,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idLocal.present) {
      map['idLocal'] = Variable<int>(idLocal.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<String>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalizacoesCompanion(')
          ..write('idLocal: $idLocal, ')
          ..write('nome: $nome, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class Localizacoes extends Table with TableInfo<Localizacoes, Localizacao> {
  final GeneratedDatabase _db;
  final String _alias;
  Localizacoes(this._db, [this._alias]);
  final VerificationMeta _idLocalMeta = const VerificationMeta('idLocal');
  GeneratedIntColumn _idLocal;
  GeneratedIntColumn get idLocal => _idLocal ??= _constructIdLocal();
  GeneratedIntColumn _constructIdLocal() {
    return GeneratedIntColumn('idLocal', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedTextColumn _createdAt;
  GeneratedTextColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedTextColumn _constructCreatedAt() {
    return GeneratedTextColumn('createdAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedTextColumn _updatedAt;
  GeneratedTextColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedTextColumn _constructUpdatedAt() {
    return GeneratedTextColumn('updatedAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  @override
  List<GeneratedColumn> get $columns => [idLocal, nome, createdAt, updatedAt];
  @override
  Localizacoes get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'Localizacoes';
  @override
  final String actualTableName = 'Localizacoes';
  @override
  VerificationContext validateIntegrity(Insertable<Localizacao> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idLocal')) {
      context.handle(_idLocalMeta,
          idLocal.isAcceptableOrUnknown(data['idLocal'], _idLocalMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt'], _createdAtMeta));
    }
    if (data.containsKey('updatedAt')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updatedAt'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idLocal};
  @override
  Localizacao map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Localizacao.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Localizacoes createAlias(String alias) {
    return Localizacoes(_db, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY (idLocal)'];
  @override
  bool get dontWriteConstraints => true;
}

class Compra extends DataClass implements Insertable<Compra> {
  final int idCompra;
  final int localDeCompra;
  final int comprador;
  final String createdAt;
  final String updatedAt;
  Compra(
      {@required this.idCompra,
      @required this.localDeCompra,
      @required this.comprador,
      this.createdAt,
      this.updatedAt});
  factory Compra.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Compra(
      idCompra:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idCompra']),
      localDeCompra: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}localDeCompra']),
      comprador:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}comprador']),
      createdAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt']),
      updatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}updatedAt']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idCompra != null) {
      map['idCompra'] = Variable<int>(idCompra);
    }
    if (!nullToAbsent || localDeCompra != null) {
      map['localDeCompra'] = Variable<int>(localDeCompra);
    }
    if (!nullToAbsent || comprador != null) {
      map['comprador'] = Variable<int>(comprador);
    }
    if (!nullToAbsent || createdAt != null) {
      map['createdAt'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updatedAt'] = Variable<String>(updatedAt);
    }
    return map;
  }

  ComprasCompanion toCompanion(bool nullToAbsent) {
    return ComprasCompanion(
      idCompra: idCompra == null && nullToAbsent
          ? const Value.absent()
          : Value(idCompra),
      localDeCompra: localDeCompra == null && nullToAbsent
          ? const Value.absent()
          : Value(localDeCompra),
      comprador: comprador == null && nullToAbsent
          ? const Value.absent()
          : Value(comprador),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Compra.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Compra(
      idCompra: serializer.fromJson<int>(json['idCompra']),
      localDeCompra: serializer.fromJson<int>(json['localDeCompra']),
      comprador: serializer.fromJson<int>(json['comprador']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idCompra': serializer.toJson<int>(idCompra),
      'localDeCompra': serializer.toJson<int>(localDeCompra),
      'comprador': serializer.toJson<int>(comprador),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  Compra copyWith(
          {int idCompra,
          int localDeCompra,
          int comprador,
          String createdAt,
          String updatedAt}) =>
      Compra(
        idCompra: idCompra ?? this.idCompra,
        localDeCompra: localDeCompra ?? this.localDeCompra,
        comprador: comprador ?? this.comprador,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Compra(')
          ..write('idCompra: $idCompra, ')
          ..write('localDeCompra: $localDeCompra, ')
          ..write('comprador: $comprador, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idCompra.hashCode,
      $mrjc(
          localDeCompra.hashCode,
          $mrjc(comprador.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Compra &&
          other.idCompra == this.idCompra &&
          other.localDeCompra == this.localDeCompra &&
          other.comprador == this.comprador &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ComprasCompanion extends UpdateCompanion<Compra> {
  final Value<int> idCompra;
  final Value<int> localDeCompra;
  final Value<int> comprador;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  const ComprasCompanion({
    this.idCompra = const Value.absent(),
    this.localDeCompra = const Value.absent(),
    this.comprador = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ComprasCompanion.insert({
    this.idCompra = const Value.absent(),
    @required int localDeCompra,
    @required int comprador,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : localDeCompra = Value(localDeCompra),
        comprador = Value(comprador);
  static Insertable<Compra> custom({
    Expression<int> idCompra,
    Expression<int> localDeCompra,
    Expression<int> comprador,
    Expression<String> createdAt,
    Expression<String> updatedAt,
  }) {
    return RawValuesInsertable({
      if (idCompra != null) 'idCompra': idCompra,
      if (localDeCompra != null) 'localDeCompra': localDeCompra,
      if (comprador != null) 'comprador': comprador,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  ComprasCompanion copyWith(
      {Value<int> idCompra,
      Value<int> localDeCompra,
      Value<int> comprador,
      Value<String> createdAt,
      Value<String> updatedAt}) {
    return ComprasCompanion(
      idCompra: idCompra ?? this.idCompra,
      localDeCompra: localDeCompra ?? this.localDeCompra,
      comprador: comprador ?? this.comprador,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idCompra.present) {
      map['idCompra'] = Variable<int>(idCompra.value);
    }
    if (localDeCompra.present) {
      map['localDeCompra'] = Variable<int>(localDeCompra.value);
    }
    if (comprador.present) {
      map['comprador'] = Variable<int>(comprador.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<String>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ComprasCompanion(')
          ..write('idCompra: $idCompra, ')
          ..write('localDeCompra: $localDeCompra, ')
          ..write('comprador: $comprador, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class Compras extends Table with TableInfo<Compras, Compra> {
  final GeneratedDatabase _db;
  final String _alias;
  Compras(this._db, [this._alias]);
  final VerificationMeta _idCompraMeta = const VerificationMeta('idCompra');
  GeneratedIntColumn _idCompra;
  GeneratedIntColumn get idCompra => _idCompra ??= _constructIdCompra();
  GeneratedIntColumn _constructIdCompra() {
    return GeneratedIntColumn('idCompra', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _localDeCompraMeta =
      const VerificationMeta('localDeCompra');
  GeneratedIntColumn _localDeCompra;
  GeneratedIntColumn get localDeCompra =>
      _localDeCompra ??= _constructLocalDeCompra();
  GeneratedIntColumn _constructLocalDeCompra() {
    return GeneratedIntColumn('localDeCompra', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _compradorMeta = const VerificationMeta('comprador');
  GeneratedIntColumn _comprador;
  GeneratedIntColumn get comprador => _comprador ??= _constructComprador();
  GeneratedIntColumn _constructComprador() {
    return GeneratedIntColumn('comprador', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedTextColumn _createdAt;
  GeneratedTextColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedTextColumn _constructCreatedAt() {
    return GeneratedTextColumn('createdAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedTextColumn _updatedAt;
  GeneratedTextColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedTextColumn _constructUpdatedAt() {
    return GeneratedTextColumn('updatedAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idCompra, localDeCompra, comprador, createdAt, updatedAt];
  @override
  Compras get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'Compras';
  @override
  final String actualTableName = 'Compras';
  @override
  VerificationContext validateIntegrity(Insertable<Compra> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idCompra')) {
      context.handle(_idCompraMeta,
          idCompra.isAcceptableOrUnknown(data['idCompra'], _idCompraMeta));
    }
    if (data.containsKey('localDeCompra')) {
      context.handle(
          _localDeCompraMeta,
          localDeCompra.isAcceptableOrUnknown(
              data['localDeCompra'], _localDeCompraMeta));
    } else if (isInserting) {
      context.missing(_localDeCompraMeta);
    }
    if (data.containsKey('comprador')) {
      context.handle(_compradorMeta,
          comprador.isAcceptableOrUnknown(data['comprador'], _compradorMeta));
    } else if (isInserting) {
      context.missing(_compradorMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt'], _createdAtMeta));
    }
    if (data.containsKey('updatedAt')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updatedAt'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idCompra};
  @override
  Compra map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Compra.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Compras createAlias(String alias) {
    return Compras(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY (idCompra)',
        'CONSTRAINT comprador\r\n    FOREIGN KEY (comprador)\r\n    REFERENCES Compradores (idComprador)\r\n    ON DELETE NO ACTION\r\n    ON UPDATE NO ACTION',
        'CONSTRAINT local\r\n    FOREIGN KEY (localDeCompra)\r\n    REFERENCES Localizacoes (idLocal)\r\n    ON DELETE NO ACTION\r\n    ON UPDATE NO ACTION'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Item extends DataClass implements Insertable<Item> {
  final int idItem;
  final String nome;
  final double preco;
  final int localComprado;
  final String createdAt;
  final String updatedAt;
  Item(
      {@required this.idItem,
      @required this.nome,
      @required this.preco,
      @required this.localComprado,
      this.createdAt,
      this.updatedAt});
  factory Item.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Item(
      idItem: intType.mapFromDatabaseResponse(data['${effectivePrefix}idItem']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      preco:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}preco']),
      localComprado: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}localComprado']),
      createdAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt']),
      updatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}updatedAt']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idItem != null) {
      map['idItem'] = Variable<int>(idItem);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || preco != null) {
      map['preco'] = Variable<double>(preco);
    }
    if (!nullToAbsent || localComprado != null) {
      map['localComprado'] = Variable<int>(localComprado);
    }
    if (!nullToAbsent || createdAt != null) {
      map['createdAt'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updatedAt'] = Variable<String>(updatedAt);
    }
    return map;
  }

  ItensCompanion toCompanion(bool nullToAbsent) {
    return ItensCompanion(
      idItem:
          idItem == null && nullToAbsent ? const Value.absent() : Value(idItem),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      preco:
          preco == null && nullToAbsent ? const Value.absent() : Value(preco),
      localComprado: localComprado == null && nullToAbsent
          ? const Value.absent()
          : Value(localComprado),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Item(
      idItem: serializer.fromJson<int>(json['idItem']),
      nome: serializer.fromJson<String>(json['nome']),
      preco: serializer.fromJson<double>(json['preco']),
      localComprado: serializer.fromJson<int>(json['localComprado']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idItem': serializer.toJson<int>(idItem),
      'nome': serializer.toJson<String>(nome),
      'preco': serializer.toJson<double>(preco),
      'localComprado': serializer.toJson<int>(localComprado),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  Item copyWith(
          {int idItem,
          String nome,
          double preco,
          int localComprado,
          String createdAt,
          String updatedAt}) =>
      Item(
        idItem: idItem ?? this.idItem,
        nome: nome ?? this.nome,
        preco: preco ?? this.preco,
        localComprado: localComprado ?? this.localComprado,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('idItem: $idItem, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('localComprado: $localComprado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idItem.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              preco.hashCode,
              $mrjc(localComprado.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Item &&
          other.idItem == this.idItem &&
          other.nome == this.nome &&
          other.preco == this.preco &&
          other.localComprado == this.localComprado &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ItensCompanion extends UpdateCompanion<Item> {
  final Value<int> idItem;
  final Value<String> nome;
  final Value<double> preco;
  final Value<int> localComprado;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  const ItensCompanion({
    this.idItem = const Value.absent(),
    this.nome = const Value.absent(),
    this.preco = const Value.absent(),
    this.localComprado = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ItensCompanion.insert({
    this.idItem = const Value.absent(),
    @required String nome,
    @required double preco,
    @required int localComprado,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : nome = Value(nome),
        preco = Value(preco),
        localComprado = Value(localComprado);
  static Insertable<Item> custom({
    Expression<int> idItem,
    Expression<String> nome,
    Expression<double> preco,
    Expression<int> localComprado,
    Expression<String> createdAt,
    Expression<String> updatedAt,
  }) {
    return RawValuesInsertable({
      if (idItem != null) 'idItem': idItem,
      if (nome != null) 'nome': nome,
      if (preco != null) 'preco': preco,
      if (localComprado != null) 'localComprado': localComprado,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  ItensCompanion copyWith(
      {Value<int> idItem,
      Value<String> nome,
      Value<double> preco,
      Value<int> localComprado,
      Value<String> createdAt,
      Value<String> updatedAt}) {
    return ItensCompanion(
      idItem: idItem ?? this.idItem,
      nome: nome ?? this.nome,
      preco: preco ?? this.preco,
      localComprado: localComprado ?? this.localComprado,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idItem.present) {
      map['idItem'] = Variable<int>(idItem.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (localComprado.present) {
      map['localComprado'] = Variable<int>(localComprado.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<String>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItensCompanion(')
          ..write('idItem: $idItem, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('localComprado: $localComprado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class Itens extends Table with TableInfo<Itens, Item> {
  final GeneratedDatabase _db;
  final String _alias;
  Itens(this._db, [this._alias]);
  final VerificationMeta _idItemMeta = const VerificationMeta('idItem');
  GeneratedIntColumn _idItem;
  GeneratedIntColumn get idItem => _idItem ??= _constructIdItem();
  GeneratedIntColumn _constructIdItem() {
    return GeneratedIntColumn('idItem', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _precoMeta = const VerificationMeta('preco');
  GeneratedRealColumn _preco;
  GeneratedRealColumn get preco => _preco ??= _constructPreco();
  GeneratedRealColumn _constructPreco() {
    return GeneratedRealColumn('preco', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _localCompradoMeta =
      const VerificationMeta('localComprado');
  GeneratedIntColumn _localComprado;
  GeneratedIntColumn get localComprado =>
      _localComprado ??= _constructLocalComprado();
  GeneratedIntColumn _constructLocalComprado() {
    return GeneratedIntColumn('localComprado', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedTextColumn _createdAt;
  GeneratedTextColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedTextColumn _constructCreatedAt() {
    return GeneratedTextColumn('createdAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedTextColumn _updatedAt;
  GeneratedTextColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedTextColumn _constructUpdatedAt() {
    return GeneratedTextColumn('updatedAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idItem, nome, preco, localComprado, createdAt, updatedAt];
  @override
  Itens get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'Itens';
  @override
  final String actualTableName = 'Itens';
  @override
  VerificationContext validateIntegrity(Insertable<Item> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idItem')) {
      context.handle(_idItemMeta,
          idItem.isAcceptableOrUnknown(data['idItem'], _idItemMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco'], _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('localComprado')) {
      context.handle(
          _localCompradoMeta,
          localComprado.isAcceptableOrUnknown(
              data['localComprado'], _localCompradoMeta));
    } else if (isInserting) {
      context.missing(_localCompradoMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt'], _createdAtMeta));
    }
    if (data.containsKey('updatedAt')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updatedAt'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idItem};
  @override
  Item map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Item.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Itens createAlias(String alias) {
    return Itens(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY (idItem)',
        'CONSTRAINT localComprado\r\n    FOREIGN KEY (localComprado)\r\n    REFERENCES Localizacoes (idLocal)\r\n    ON DELETE NO ACTION\r\n    ON UPDATE NO ACTION'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class ItensCompra extends DataClass implements Insertable<ItensCompra> {
  final int idItensCompra;
  final int compra;
  final int quantidadeComprada;
  final int itemComprado;
  final String createdAt;
  final String updatedAt;
  ItensCompra(
      {@required this.idItensCompra,
      @required this.compra,
      @required this.quantidadeComprada,
      @required this.itemComprado,
      this.createdAt,
      this.updatedAt});
  factory ItensCompra.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ItensCompra(
      idItensCompra: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}idItensCompra']),
      compra: intType.mapFromDatabaseResponse(data['${effectivePrefix}compra']),
      quantidadeComprada: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}QuantidadeComprada']),
      itemComprado: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}itemComprado']),
      createdAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt']),
      updatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}updatedAt']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idItensCompra != null) {
      map['idItensCompra'] = Variable<int>(idItensCompra);
    }
    if (!nullToAbsent || compra != null) {
      map['compra'] = Variable<int>(compra);
    }
    if (!nullToAbsent || quantidadeComprada != null) {
      map['QuantidadeComprada'] = Variable<int>(quantidadeComprada);
    }
    if (!nullToAbsent || itemComprado != null) {
      map['itemComprado'] = Variable<int>(itemComprado);
    }
    if (!nullToAbsent || createdAt != null) {
      map['createdAt'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updatedAt'] = Variable<String>(updatedAt);
    }
    return map;
  }

  ItensComprasCompanion toCompanion(bool nullToAbsent) {
    return ItensComprasCompanion(
      idItensCompra: idItensCompra == null && nullToAbsent
          ? const Value.absent()
          : Value(idItensCompra),
      compra:
          compra == null && nullToAbsent ? const Value.absent() : Value(compra),
      quantidadeComprada: quantidadeComprada == null && nullToAbsent
          ? const Value.absent()
          : Value(quantidadeComprada),
      itemComprado: itemComprado == null && nullToAbsent
          ? const Value.absent()
          : Value(itemComprado),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ItensCompra.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ItensCompra(
      idItensCompra: serializer.fromJson<int>(json['idItensCompra']),
      compra: serializer.fromJson<int>(json['compra']),
      quantidadeComprada: serializer.fromJson<int>(json['QuantidadeComprada']),
      itemComprado: serializer.fromJson<int>(json['itemComprado']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idItensCompra': serializer.toJson<int>(idItensCompra),
      'compra': serializer.toJson<int>(compra),
      'QuantidadeComprada': serializer.toJson<int>(quantidadeComprada),
      'itemComprado': serializer.toJson<int>(itemComprado),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  ItensCompra copyWith(
          {int idItensCompra,
          int compra,
          int quantidadeComprada,
          int itemComprado,
          String createdAt,
          String updatedAt}) =>
      ItensCompra(
        idItensCompra: idItensCompra ?? this.idItensCompra,
        compra: compra ?? this.compra,
        quantidadeComprada: quantidadeComprada ?? this.quantidadeComprada,
        itemComprado: itemComprado ?? this.itemComprado,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ItensCompra(')
          ..write('idItensCompra: $idItensCompra, ')
          ..write('compra: $compra, ')
          ..write('quantidadeComprada: $quantidadeComprada, ')
          ..write('itemComprado: $itemComprado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idItensCompra.hashCode,
      $mrjc(
          compra.hashCode,
          $mrjc(
              quantidadeComprada.hashCode,
              $mrjc(itemComprado.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ItensCompra &&
          other.idItensCompra == this.idItensCompra &&
          other.compra == this.compra &&
          other.quantidadeComprada == this.quantidadeComprada &&
          other.itemComprado == this.itemComprado &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ItensComprasCompanion extends UpdateCompanion<ItensCompra> {
  final Value<int> idItensCompra;
  final Value<int> compra;
  final Value<int> quantidadeComprada;
  final Value<int> itemComprado;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  const ItensComprasCompanion({
    this.idItensCompra = const Value.absent(),
    this.compra = const Value.absent(),
    this.quantidadeComprada = const Value.absent(),
    this.itemComprado = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ItensComprasCompanion.insert({
    @required int idItensCompra,
    @required int compra,
    @required int quantidadeComprada,
    @required int itemComprado,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : idItensCompra = Value(idItensCompra),
        compra = Value(compra),
        quantidadeComprada = Value(quantidadeComprada),
        itemComprado = Value(itemComprado);
  static Insertable<ItensCompra> custom({
    Expression<int> idItensCompra,
    Expression<int> compra,
    Expression<int> quantidadeComprada,
    Expression<int> itemComprado,
    Expression<String> createdAt,
    Expression<String> updatedAt,
  }) {
    return RawValuesInsertable({
      if (idItensCompra != null) 'idItensCompra': idItensCompra,
      if (compra != null) 'compra': compra,
      if (quantidadeComprada != null) 'QuantidadeComprada': quantidadeComprada,
      if (itemComprado != null) 'itemComprado': itemComprado,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  ItensComprasCompanion copyWith(
      {Value<int> idItensCompra,
      Value<int> compra,
      Value<int> quantidadeComprada,
      Value<int> itemComprado,
      Value<String> createdAt,
      Value<String> updatedAt}) {
    return ItensComprasCompanion(
      idItensCompra: idItensCompra ?? this.idItensCompra,
      compra: compra ?? this.compra,
      quantidadeComprada: quantidadeComprada ?? this.quantidadeComprada,
      itemComprado: itemComprado ?? this.itemComprado,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idItensCompra.present) {
      map['idItensCompra'] = Variable<int>(idItensCompra.value);
    }
    if (compra.present) {
      map['compra'] = Variable<int>(compra.value);
    }
    if (quantidadeComprada.present) {
      map['QuantidadeComprada'] = Variable<int>(quantidadeComprada.value);
    }
    if (itemComprado.present) {
      map['itemComprado'] = Variable<int>(itemComprado.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<String>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItensComprasCompanion(')
          ..write('idItensCompra: $idItensCompra, ')
          ..write('compra: $compra, ')
          ..write('quantidadeComprada: $quantidadeComprada, ')
          ..write('itemComprado: $itemComprado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class ItensCompras extends Table with TableInfo<ItensCompras, ItensCompra> {
  final GeneratedDatabase _db;
  final String _alias;
  ItensCompras(this._db, [this._alias]);
  final VerificationMeta _idItensCompraMeta =
      const VerificationMeta('idItensCompra');
  GeneratedIntColumn _idItensCompra;
  GeneratedIntColumn get idItensCompra =>
      _idItensCompra ??= _constructIdItensCompra();
  GeneratedIntColumn _constructIdItensCompra() {
    return GeneratedIntColumn('idItensCompra', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _compraMeta = const VerificationMeta('compra');
  GeneratedIntColumn _compra;
  GeneratedIntColumn get compra => _compra ??= _constructCompra();
  GeneratedIntColumn _constructCompra() {
    return GeneratedIntColumn('compra', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _quantidadeCompradaMeta =
      const VerificationMeta('quantidadeComprada');
  GeneratedIntColumn _quantidadeComprada;
  GeneratedIntColumn get quantidadeComprada =>
      _quantidadeComprada ??= _constructQuantidadeComprada();
  GeneratedIntColumn _constructQuantidadeComprada() {
    return GeneratedIntColumn('QuantidadeComprada', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _itemCompradoMeta =
      const VerificationMeta('itemComprado');
  GeneratedIntColumn _itemComprado;
  GeneratedIntColumn get itemComprado =>
      _itemComprado ??= _constructItemComprado();
  GeneratedIntColumn _constructItemComprado() {
    return GeneratedIntColumn('itemComprado', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedTextColumn _createdAt;
  GeneratedTextColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedTextColumn _constructCreatedAt() {
    return GeneratedTextColumn('createdAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedTextColumn _updatedAt;
  GeneratedTextColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedTextColumn _constructUpdatedAt() {
    return GeneratedTextColumn('updatedAt', $tableName, true,
        $customConstraints: 'DEFAULT CURRENT_TIMESTAMP',
        defaultValue: const CustomExpression<String>('CURRENT_TIMESTAMP'));
  }

  @override
  List<GeneratedColumn> get $columns => [
        idItensCompra,
        compra,
        quantidadeComprada,
        itemComprado,
        createdAt,
        updatedAt
      ];
  @override
  ItensCompras get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'ItensCompras';
  @override
  final String actualTableName = 'ItensCompras';
  @override
  VerificationContext validateIntegrity(Insertable<ItensCompra> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idItensCompra')) {
      context.handle(
          _idItensCompraMeta,
          idItensCompra.isAcceptableOrUnknown(
              data['idItensCompra'], _idItensCompraMeta));
    } else if (isInserting) {
      context.missing(_idItensCompraMeta);
    }
    if (data.containsKey('compra')) {
      context.handle(_compraMeta,
          compra.isAcceptableOrUnknown(data['compra'], _compraMeta));
    } else if (isInserting) {
      context.missing(_compraMeta);
    }
    if (data.containsKey('QuantidadeComprada')) {
      context.handle(
          _quantidadeCompradaMeta,
          quantidadeComprada.isAcceptableOrUnknown(
              data['QuantidadeComprada'], _quantidadeCompradaMeta));
    } else if (isInserting) {
      context.missing(_quantidadeCompradaMeta);
    }
    if (data.containsKey('itemComprado')) {
      context.handle(
          _itemCompradoMeta,
          itemComprado.isAcceptableOrUnknown(
              data['itemComprado'], _itemCompradoMeta));
    } else if (isInserting) {
      context.missing(_itemCompradoMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt'], _createdAtMeta));
    }
    if (data.containsKey('updatedAt')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updatedAt'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idItensCompra, itemComprado};
  @override
  ItensCompra map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ItensCompra.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  ItensCompras createAlias(String alias) {
    return ItensCompras(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY (idItensCompra, itemComprado)',
        'CONSTRAINT compraId\r\n    FOREIGN KEY (compra)\r\n    REFERENCES Compras (idCompra)\r\n    ON DELETE NO ACTION\r\n    ON UPDATE NO ACTION',
        'CONSTRAINT fk_ItensCompra_Item1\r\n    FOREIGN KEY (itemComprado)\r\n    REFERENCES Itens (idItem)\r\n    ON DELETE NO ACTION\r\n    ON UPDATE NO ACTION'
      ];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$CoinWatcherDb extends GeneratedDatabase {
  _$CoinWatcherDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  Compradores _compradores;
  Compradores get compradores => _compradores ??= Compradores(this);
  Localizacoes _localizacoes;
  Localizacoes get localizacoes => _localizacoes ??= Localizacoes(this);
  Compras _compras;
  Compras get compras => _compras ??= Compras(this);
  Itens _itens;
  Itens get itens => _itens ??= Itens(this);
  ItensCompras _itensCompras;
  ItensCompras get itensCompras => _itensCompras ??= ItensCompras(this);
  CompradoresSQLiteDAO _compradoresSQLiteDAO;
  CompradoresSQLiteDAO get compradoresSQLiteDAO =>
      _compradoresSQLiteDAO ??= CompradoresSQLiteDAO(this as CoinWatcherDb);
  ItensSQLiteDAO _itensSQLiteDAO;
  ItensSQLiteDAO get itensSQLiteDAO =>
      _itensSQLiteDAO ??= ItensSQLiteDAO(this as CoinWatcherDb);
  LocalizacoesSQLiteDAO _localizacoesSQLiteDAO;
  LocalizacoesSQLiteDAO get localizacoesSQLiteDAO =>
      _localizacoesSQLiteDAO ??= LocalizacoesSQLiteDAO(this as CoinWatcherDb);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [compradores, localizacoes, compras, itens, itensCompras];
}
