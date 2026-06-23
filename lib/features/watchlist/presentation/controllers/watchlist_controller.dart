import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/watchlist_entity.dart';
import '../../domain/usecases/get_watchlists_usecase.dart';

part 'watchlist_controller.g.dart';

@riverpod
class WatchlistController extends _$WatchlistController {
  @override
  FutureOr<List<WatchlistEntity>> build() {
    return ref.watch(getWatchlistsProvider.future);
  }
  
  Future<void> refresh() async {
     state = const AsyncValue.loading();
     state = await AsyncValue.guard(() => ref.refresh(getWatchlistsProvider.future));
  }
}
