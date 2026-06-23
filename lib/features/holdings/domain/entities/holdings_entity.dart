import 'package:freezed_annotation/freezed_annotation.dart';

part 'holdings_entity.freezed.dart';

@freezed
abstract class HoldingsEntity with _$HoldingsEntity {
  const factory HoldingsEntity({
    required String id,
    required String name,
  }) = _HoldingsEntity;
}
