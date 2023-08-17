// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:space/feature_feed/domain/repositories/tile_repository.dart';

import '../../domain/models/tale.dart';

class TaleUseCase extends TaleRepository {
  final TaleRepository taleRepository;
  final List<Tale> tales = [];

  TaleUseCase({
    required this.taleRepository,
  });

  @override
  Future<List<Tale>> getAll() async {
    return tales;
  }

  @override
  Future<Tale> getTileById(String id) {
    // TODO: implement getTileById
    throw UnimplementedError();
  }

  @override
  Future<void> removeTale(String id) {
    // TODO: implement removeTale
    throw UnimplementedError();
  }

  @override
  Future<void> setTale(Tale tale) {
    // TODO: implement setTale
    throw UnimplementedError();
  }
}
