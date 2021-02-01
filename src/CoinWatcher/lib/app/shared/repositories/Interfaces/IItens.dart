import '../../../modules/compras/models/item.dart';

abstract class IItem {
  Future addItem(Item novoItem);
  Future<Item> getItem(int id);
  Future<List<Item>> getAllItem();
  Future put(int id, Item novoItem);
  Future delete(int id);
}
