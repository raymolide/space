import '../models/tale.dart';

abstract class TaleRepository {
  Future<Tale> getTileById(String id);
  Future<void> setTale(Tale tale);
   Future<void> removeTale(String id);
  Future<List<Tale>> getAll();
}
