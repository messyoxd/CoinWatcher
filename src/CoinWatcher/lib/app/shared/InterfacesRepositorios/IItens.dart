import 'package:CoinWatcher/app/models/item.dart';

abstract class IItem {
  Future addItem(ModelItem novoItem);
  Future<ModelItem> getItem(int id);
  Future<List<ModelItem>> getAllItem();
  Future put(int id, ModelItem novoItem);
  Future remove(int id);
}
