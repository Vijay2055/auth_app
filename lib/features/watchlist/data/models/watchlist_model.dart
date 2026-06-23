import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/watchlist_entity.dart';

part 'watchlist_model.freezed.dart';
part 'watchlist_model.g.dart';

@freezed
abstract class WatchlistModel with _$WatchlistModel {
  const WatchlistModel._();

  const factory WatchlistModel({
    required String id,
    required String name,
  }) = _WatchlistModel;

  factory WatchlistModel.fromJson(Map<String, dynamic> json) => 
      _$WatchlistModelFromJson(json);

  WatchlistEntity toEntity() => WatchlistEntity(id: id, name: name);
}
