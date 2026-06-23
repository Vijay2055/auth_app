import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../../../core/providers/network_providers.dart';
import '../models/holdings_model.dart';

part 'holdings_remote_data_source.g.dart';

abstract class HoldingsRemoteDataSource {
  Future<List<HoldingsModel>> fetchHoldingss();
  Future<HoldingsModel> fetchHoldings(String id);
}

@riverpod
HoldingsRemoteDataSource holdingsRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return HoldingsRemoteDataSourceImpl(dio);
}

class HoldingsRemoteDataSourceImpl implements HoldingsRemoteDataSource {
  final Dio _dio;
  
  HoldingsRemoteDataSourceImpl(this._dio);

  @override
  Future<List<HoldingsModel>> fetchHoldingss() async {
    // final response = await _dio.get('/holdingss');
    // return (response.data as List).map((e) => HoldingsModel.fromJson(e)).toList();
    await Future.delayed(const Duration(seconds: 1));
    return [
      const HoldingsModel(id: '1', name: 'Item 1'),
      const HoldingsModel(id: '2', name: 'Item 2'),
    ];
  }

  @override
  Future<HoldingsModel> fetchHoldings(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return HoldingsModel(id: id, name: 'Item ');
  }
}
