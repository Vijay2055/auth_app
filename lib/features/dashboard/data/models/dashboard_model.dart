import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const DashboardModel._();

  const factory DashboardModel({
    required String id,
    required String name,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) => 
      _$DashboardModelFromJson(json);

  DashboardEntity toEntity() => DashboardEntity(id: id, name: name);
}
