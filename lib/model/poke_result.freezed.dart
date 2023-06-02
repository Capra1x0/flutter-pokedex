// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokeResult _$PokeResultFromJson(Map<String, dynamic> json) {
  return _PokeResult.fromJson(json);
}

/// @nodoc
mixin _$PokeResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeResultCopyWith<PokeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeResultCopyWith<$Res> {
  factory $PokeResultCopyWith(
          PokeResult value, $Res Function(PokeResult) then) =
      _$PokeResultCopyWithImpl<$Res, PokeResult>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokeResultCopyWithImpl<$Res, $Val extends PokeResult>
    implements $PokeResultCopyWith<$Res> {
  _$PokeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokeResultCopyWith<$Res>
    implements $PokeResultCopyWith<$Res> {
  factory _$$_PokeResultCopyWith(
          _$_PokeResult value, $Res Function(_$_PokeResult) then) =
      __$$_PokeResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokeResultCopyWithImpl<$Res>
    extends _$PokeResultCopyWithImpl<$Res, _$_PokeResult>
    implements _$$_PokeResultCopyWith<$Res> {
  __$$_PokeResultCopyWithImpl(
      _$_PokeResult _value, $Res Function(_$_PokeResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_PokeResult(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokeResult implements _PokeResult {
  const _$_PokeResult({required this.name, required this.url});

  factory _$_PokeResult.fromJson(Map<String, dynamic> json) =>
      _$$_PokeResultFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokeResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokeResult &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokeResultCopyWith<_$_PokeResult> get copyWith =>
      __$$_PokeResultCopyWithImpl<_$_PokeResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokeResultToJson(
      this,
    );
  }
}

abstract class _PokeResult implements PokeResult {
  const factory _PokeResult(
      {required final String name, required final String url}) = _$_PokeResult;

  factory _PokeResult.fromJson(Map<String, dynamic> json) =
      _$_PokeResult.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokeResultCopyWith<_$_PokeResult> get copyWith =>
      throw _privateConstructorUsedError;
}
