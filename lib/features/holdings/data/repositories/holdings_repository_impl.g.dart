// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holdings_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(holdingsRepository)
final holdingsRepositoryProvider = HoldingsRepositoryProvider._();

final class HoldingsRepositoryProvider
    extends
        $FunctionalProvider<
          HoldingsRepository,
          HoldingsRepository,
          HoldingsRepository
        >
    with $Provider<HoldingsRepository> {
  HoldingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'holdingsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$holdingsRepositoryHash();

  @$internal
  @override
  $ProviderElement<HoldingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HoldingsRepository create(Ref ref) {
    return holdingsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HoldingsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HoldingsRepository>(value),
    );
  }
}

String _$holdingsRepositoryHash() =>
    r'97e11bce22d0e8f8680187894c559968fae736f7';
