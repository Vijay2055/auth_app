import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';

@freezed
abstract class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    required String id,
    required String name,
  }) = _DashboardEntity;
}
