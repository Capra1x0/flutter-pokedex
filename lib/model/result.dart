import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/model/poke_result.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    required int count,
    required List<PokeResult> results,
    String? next,
    String? previous,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}
