// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WatchlistController)
final watchlistControllerProvider = WatchlistControllerProvider._();

final class WatchlistControllerProvider
    extends $AsyncNotifierProvider<WatchlistController, List<WatchlistEntity>> {
  WatchlistControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchlistControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchlistControllerHash();

  @$internal
  @override
  WatchlistController create() => WatchlistController();
}

String _$watchlistControllerHash() =>
    r'29d49b62ce8439c5dc760008ba1a977ee6b5c59d';

abstract class _$WatchlistController
    extends $AsyncNotifier<List<WatchlistEntity>> {
  FutureOr<List<WatchlistEntity>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<WatchlistEntity>>, List<WatchlistEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<WatchlistEntity>>,
                List<WatchlistEntity>
              >,
              AsyncValue<List<WatchlistEntity>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
