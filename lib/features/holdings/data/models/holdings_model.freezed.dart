// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holdings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HoldingsModel {

 String get id; String get name;
/// Create a copy of HoldingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoldingsModelCopyWith<HoldingsModel> get copyWith => _$HoldingsModelCopyWithImpl<HoldingsModel>(this as HoldingsModel, _$identity);

  /// Serializes this HoldingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HoldingsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HoldingsModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HoldingsModelCopyWith<$Res>  {
  factory $HoldingsModelCopyWith(HoldingsModel value, $Res Function(HoldingsModel) _then) = _$HoldingsModelCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$HoldingsModelCopyWithImpl<$Res>
    implements $HoldingsModelCopyWith<$Res> {
  _$HoldingsModelCopyWithImpl(this._self, this._then);

  final HoldingsModel _self;
  final $Res Function(HoldingsModel) _then;

/// Create a copy of HoldingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HoldingsModel].
extension HoldingsModelPatterns on HoldingsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HoldingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HoldingsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HoldingsModel value)  $default,){
final _that = this;
switch (_that) {
case _HoldingsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HoldingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _HoldingsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HoldingsModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _HoldingsModel():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _HoldingsModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HoldingsModel extends HoldingsModel {
  const _HoldingsModel({required this.id, required this.name}): super._();
  factory _HoldingsModel.fromJson(Map<String, dynamic> json) => _$HoldingsModelFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of HoldingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoldingsModelCopyWith<_HoldingsModel> get copyWith => __$HoldingsModelCopyWithImpl<_HoldingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HoldingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HoldingsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HoldingsModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HoldingsModelCopyWith<$Res> implements $HoldingsModelCopyWith<$Res> {
  factory _$HoldingsModelCopyWith(_HoldingsModel value, $Res Function(_HoldingsModel) _then) = __$HoldingsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$HoldingsModelCopyWithImpl<$Res>
    implements _$HoldingsModelCopyWith<$Res> {
  __$HoldingsModelCopyWithImpl(this._self, this._then);

  final _HoldingsModel _self;
  final $Res Function(_HoldingsModel) _then;

/// Create a copy of HoldingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_HoldingsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
