import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/dashboard_entity.dart';
import '../repositories/dashboard_repository.dart';
import '../../data/repositories/dashboard_repository_impl.dart';

part 'get_dashboards_usecase.g.dart';

@riverpod
Future<List<DashboardEntity>> getDashboards(Ref ref) {
  return ref.watch(dashboardRepositoryProvider).getDashboards();
}
