// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites.freezed.dart';
part 'sprites.g.dart';

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'front_default') String? frontDefault
}) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
