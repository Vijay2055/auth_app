// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_watchlists_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getWatchlists)
final getWatchlistsProvider = GetWatchlistsProvider._();

final class GetWatchlistsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WatchlistEntity>>,
          List<WatchlistEntity>,
          FutureOr<List<WatchlistEntity>>
        >
    with
        $FutureModifier<List<WatchlistEntity>>,
        $FutureProvider<List<WatchlistEntity>> {
  GetWatchlistsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWatchlistsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWatchlistsHash();

  @$internal
  @override
  $FutureProviderElement<List<WatchlistEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<WatchlistEntity>> create(Ref ref) {
    return getWatchlists(ref);
  }
}

String _$getWatchlistsHash() => r'7fa30965a905ccaaa5b9e8a5da57f50fac84a5ac';
