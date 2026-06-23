import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../entities/holdings_entity.dart';
import '../repositories/holdings_repository.dart';
import '../../data/repositories/holdings_repository_impl.dart';

part 'get_holdingss_usecase.g.dart';

@riverpod
Future<List<HoldingsEntity>> getHoldingss(Ref ref) {
  return ref.watch(holdingsRepositoryProvider).getHoldingss();
}
