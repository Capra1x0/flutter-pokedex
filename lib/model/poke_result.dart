import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_result.freezed.dart';

part 'poke_result.g.dart';

@freezed
class PokeResult with _$PokeResult {
  const factory PokeResult({
    required String name,
    required String url,
  }) = _PokeResult;

  factory PokeResult.fromJson(Map<String, dynamic> json) => _$PokeResultFromJson(json);
}
