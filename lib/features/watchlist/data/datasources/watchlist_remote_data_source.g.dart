// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(watchlistRemoteDataSource)
final watchlistRemoteDataSourceProvider = WatchlistRemoteDataSourceProvider._();

final class WatchlistRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          WatchlistRemoteDataSource,
          WatchlistRemoteDataSource,
          WatchlistRemoteDataSource
        >
    with $Provider<WatchlistRemoteDataSource> {
  WatchlistRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchlistRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchlistRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<WatchlistRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchlistRemoteDataSource create(Ref ref) {
    return watchlistRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchlistRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchlistRemoteDataSource>(value),
    );
  }
}

String _$watchlistRemoteDataSourceHash() =>
    r'1c1f5de29410ec739753f177f166cd4fb232ad01';
