// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holdings_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(holdingsRemoteDataSource)
final holdingsRemoteDataSourceProvider = HoldingsRemoteDataSourceProvider._();

final class HoldingsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          HoldingsRemoteDataSource,
          HoldingsRemoteDataSource,
          HoldingsRemoteDataSource
        >
    with $Provider<HoldingsRemoteDataSource> {
  HoldingsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'holdingsRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$holdingsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<HoldingsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HoldingsRemoteDataSource create(Ref ref) {
    return holdingsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HoldingsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HoldingsRemoteDataSource>(value),
    );
  }
}

String _$holdingsRemoteDataSourceHash() =>
    r'79889d3898eaffe116b20f15e3f9c32a97f5fb3d';
