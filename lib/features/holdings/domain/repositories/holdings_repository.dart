import '../entities/holdings_entity.dart';

abstract class HoldingsRepository {
  Future<List<HoldingsEntity>> getHoldingss();
  Future<HoldingsEntity> getHoldings(String id);
}
