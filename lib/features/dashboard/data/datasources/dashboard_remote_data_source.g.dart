// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardRemoteDataSource)
final dashboardRemoteDataSourceProvider = DashboardRemoteDataSourceProvider._();

final class DashboardRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          DashboardRemoteDataSource,
          DashboardRemoteDataSource,
          DashboardRemoteDataSource
        >
    with $Provider<DashboardRemoteDataSource> {
  DashboardRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<DashboardRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardRemoteDataSource create(Ref ref) {
    return dashboardRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardRemoteDataSource>(value),
    );
  }
}

String _$dashboardRemoteDataSourceHash() =>
    r'f2e9f8daec079053ddfd04caff3e45a85c5715b1';
