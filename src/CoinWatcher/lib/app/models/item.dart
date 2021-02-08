class ModelItem {
  int idItem;
  int idLocal;
  double preco;
  String nome;
  DateTime createdAt;
  DateTime updatedAt;
  ModelItem(
      {this.idItem,
      this.idLocal,
      this.preco,
      this.nome,
      this.createdAt,
      this.updatedAt});
}
