import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/usecases/get_dashboards_usecase.dart';

part 'dashboard_controller.g.dart';

@riverpod
class DashboardController extends _$DashboardController {
  @override
  FutureOr<List<DashboardEntity>> build() {
    return ref.watch(getDashboardsProvider.future);
  }
  
  Future<void> refresh() async {
     state = const AsyncValue.loading();
     state = await AsyncValue.guard(() => ref.refresh(getDashboardsProvider.future));
  }
}
