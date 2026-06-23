import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../../../core/providers/network_providers.dart';
import '../models/dashboard_model.dart';

part 'dashboard_remote_data_source.g.dart';

abstract class DashboardRemoteDataSource {
  Future<List<DashboardModel>> fetchDashboards();
  Future<DashboardModel> fetchDashboard(String id);
}

@riverpod
DashboardRemoteDataSource dashboardRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return DashboardRemoteDataSourceImpl(dio);
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final Dio _dio;
  
  DashboardRemoteDataSourceImpl(this._dio);

  @override
  Future<List<DashboardModel>> fetchDashboards() async {
    // final response = await _dio.get('/dashboards');
    // return (response.data as List).map((e) => DashboardModel.fromJson(e)).toList();
    await Future.delayed(const Duration(seconds: 1));
    return [
      const DashboardModel(id: '1', name: 'Item 1'),
      const DashboardModel(id: '2', name: 'Item 2'),
    ];
  }

  @override
  Future<DashboardModel> fetchDashboard(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return DashboardModel(id: id, name: 'Item ');
  }
}
