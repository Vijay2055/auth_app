// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_dashboards_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getDashboards)
final getDashboardsProvider = GetDashboardsProvider._();

final class GetDashboardsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DashboardEntity>>,
          List<DashboardEntity>,
          FutureOr<List<DashboardEntity>>
        >
    with
        $FutureModifier<List<DashboardEntity>>,
        $FutureProvider<List<DashboardEntity>> {
  GetDashboardsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDashboardsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDashboardsHash();

  @$internal
  @override
  $FutureProviderElement<List<DashboardEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DashboardEntity>> create(Ref ref) {
    return getDashboards(ref);
  }
}

String _$getDashboardsHash() => r'b851025004c0bfb50952200f3e61ae80f82125ab';
