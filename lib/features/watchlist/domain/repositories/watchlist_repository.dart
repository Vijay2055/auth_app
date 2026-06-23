import '../entities/watchlist_entity.dart';

abstract class WatchlistRepository {
  Future<List<WatchlistEntity>> getWatchlists();
  Future<WatchlistEntity> getWatchlist(String id);
}
