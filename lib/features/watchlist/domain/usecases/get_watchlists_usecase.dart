import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/watchlist_entity.dart';
import '../repositories/watchlist_repository.dart';
import '../../data/repositories/watchlist_repository_impl.dart';

part 'get_watchlists_usecase.g.dart';

@riverpod
Future<List<WatchlistEntity>> getWatchlists(Ref ref) {
  return ref.watch(watchlistRepositoryProvider).getWatchlists();
}
