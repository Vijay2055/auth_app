// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_holdingss_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getHoldingss)
final getHoldingssProvider = GetHoldingssProvider._();

final class GetHoldingssProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HoldingsEntity>>,
          List<HoldingsEntity>,
          FutureOr<List<HoldingsEntity>>
        >
    with
        $FutureModifier<List<HoldingsEntity>>,
        $FutureProvider<List<HoldingsEntity>> {
  GetHoldingssProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getHoldingssProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHoldingssHash();

  @$internal
  @override
  $FutureProviderElement<List<HoldingsEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HoldingsEntity>> create(Ref ref) {
    return getHoldingss(ref);
  }
}

String _$getHoldingssHash() => r'873d4e91b119f694d8e2a7ecad8d4b6a5889f495';
