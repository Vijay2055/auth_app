import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_data_source.dart';

part 'dashboard_repository_impl.g.dart';

@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  final remoteDataSource = ref.watch(dashboardRemoteDataSourceProvider);
  return DashboardRepositoryImpl(remoteDataSource);
}

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource _remoteDataSource;

  DashboardRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<DashboardEntity>> getDashboards() async {
    final models = await _remoteDataSource.fetchDashboards();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<DashboardEntity> getDashboard(String id) async {
    final model = await _remoteDataSource.fetchDashboard(id);
    return model.toEntity();
  }
}
