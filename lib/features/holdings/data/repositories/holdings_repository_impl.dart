import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/holdings_entity.dart';
import '../../domain/repositories/holdings_repository.dart';
import '../datasources/holdings_remote_data_source.dart';

part 'holdings_repository_impl.g.dart';

@riverpod
HoldingsRepository holdingsRepository(Ref ref) {
  final remoteDataSource = ref.watch(holdingsRemoteDataSourceProvider);
  return HoldingsRepositoryImpl(remoteDataSource);
}

class HoldingsRepositoryImpl implements HoldingsRepository {
  final HoldingsRemoteDataSource _remoteDataSource;

  HoldingsRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<HoldingsEntity>> getHoldingss() async {
    final models = await _remoteDataSource.fetchHoldingss();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<HoldingsEntity> getHoldings(String id) async {
    final model = await _remoteDataSource.fetchHoldings(id);
    return model.toEntity();
  }
}
