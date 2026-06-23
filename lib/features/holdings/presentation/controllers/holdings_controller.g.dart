// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holdings_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HoldingsController)
final holdingsControllerProvider = HoldingsControllerProvider._();

final class HoldingsControllerProvider
    extends $AsyncNotifierProvider<HoldingsController, List<HoldingsEntity>> {
  HoldingsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'holdingsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$holdingsControllerHash();

  @$internal
  @override
  HoldingsController create() => HoldingsController();
}

String _$holdingsControllerHash() =>
    r'4eb94ef0c9ea1d4c59a84dd4c417050ed08802af';

abstract class _$HoldingsController
    extends $AsyncNotifier<List<HoldingsEntity>> {
  FutureOr<List<HoldingsEntity>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<HoldingsEntity>>, List<HoldingsEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<HoldingsEntity>>,
                List<HoldingsEntity>
              >,
              AsyncValue<List<HoldingsEntity>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
