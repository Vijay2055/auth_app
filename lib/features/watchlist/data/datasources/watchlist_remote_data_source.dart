import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../../../core/providers/network_providers.dart';
import '../models/watchlist_model.dart';

part 'watchlist_remote_data_source.g.dart';

abstract class WatchlistRemoteDataSource {
  Future<List<WatchlistModel>> fetchWatchlists();
  Future<WatchlistModel> fetchWatchlist(String id);
}

@riverpod
WatchlistRemoteDataSource watchlistRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return WatchlistRemoteDataSourceImpl(dio);
}

class WatchlistRemoteDataSourceImpl implements WatchlistRemoteDataSource {
  final Dio _dio;
  
  WatchlistRemoteDataSourceImpl(this._dio);

  @override
  Future<List<WatchlistModel>> fetchWatchlists() async {
    // final response = await _dio.get('/watchlists');
    // return (response.data as List).map((e) => WatchlistModel.fromJson(e)).toList();
    await Future.delayed(const Duration(seconds: 1));
    return [
      const WatchlistModel(id: '1', name: 'Item 1'),
      const WatchlistModel(id: '2', name: 'Item 2'),
    ];
  }

  @override
  Future<WatchlistModel> fetchWatchlist(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return WatchlistModel(id: id, name: 'Item ');
  }
}
