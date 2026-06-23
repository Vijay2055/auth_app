import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/holdings_entity.dart';

part 'holdings_model.freezed.dart';
part 'holdings_model.g.dart';

@freezed
abstract class HoldingsModel with _$HoldingsModel {
  const HoldingsModel._();

  const factory HoldingsModel({
    required String id,
    required String name,
  }) = _HoldingsModel;

  factory HoldingsModel.fromJson(Map<String, dynamic> json) => 
      _$HoldingsModelFromJson(json);

  HoldingsEntity toEntity() => HoldingsEntity(id: id, name: name);
}
