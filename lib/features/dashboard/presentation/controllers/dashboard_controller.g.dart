// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardController)
final dashboardControllerProvider = DashboardControllerProvider._();

final class DashboardControllerProvider
    extends $AsyncNotifierProvider<DashboardController, List<DashboardEntity>> {
  DashboardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardControllerHash();

  @$internal
  @override
  DashboardController create() => DashboardController();
}

String _$dashboardControllerHash() =>
    r'cf11d01629dde832db547c6f5d51c605786e904f';

abstract class _$DashboardController
    extends $AsyncNotifier<List<DashboardEntity>> {
  FutureOr<List<DashboardEntity>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<DashboardEntity>>, List<DashboardEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<DashboardEntity>>,
                List<DashboardEntity>
              >,
              AsyncValue<List<DashboardEntity>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
