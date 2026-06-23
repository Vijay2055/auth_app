import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/watchlist_entity.dart';
import '../../domain/repositories/watchlist_repository.dart';
import '../datasources/watchlist_remote_data_source.dart';

part 'watchlist_repository_impl.g.dart';

@riverpod
WatchlistRepository watchlistRepository(Ref ref) {
  final remoteDataSource = ref.watch(watchlistRemoteDataSourceProvider);
  return WatchlistRepositoryImpl(remoteDataSource);
}

class WatchlistRepositoryImpl implements WatchlistRepository {
  final WatchlistRemoteDataSource _remoteDataSource;

  WatchlistRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<WatchlistEntity>> getWatchlists() async {
    final models = await _remoteDataSource.fetchWatchlists();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<WatchlistEntity> getWatchlist(String id) async {
    final model = await _remoteDataSource.fetchWatchlist(id);
    return model.toEntity();
  }
}
