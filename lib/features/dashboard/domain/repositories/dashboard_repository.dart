import '../entities/dashboard_entity.dart';

abstract class DashboardRepository {
  Future<List<DashboardEntity>> getDashboards();
  Future<DashboardEntity> getDashboard(String id);
}
