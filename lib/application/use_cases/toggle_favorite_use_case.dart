import '../../domain/repositories/favorites_repository.dart';

class ToggleFavoriteUseCase {
  final FavoritesRepository _repository;

  ToggleFavoriteUseCase(this._repository);

  Future<void> call(String placeId) async {
    final ids = await _repository.getIds();

    if (ids.contains(placeId)) {
      await _repository.remove(placeId);
    } else {
      await _repository.add(placeId);
    }
  }
}
