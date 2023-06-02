import 'package:dio/dio.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/model/result.dart';

typedef JsonMap = Map<String, dynamic>;

class PokeApiHandler {
  PokeApiHandler(this.dio);
  final Dio dio;

  Future<Result> getResult({int limit = 20, int offset = 0}) async {
    return dio.get<JsonMap>(
      '/pokemon',
      queryParameters: <String, dynamic>{'limit': limit, 'offset': offset},
    ).then((response) {
      return Result.fromJson(response.data!);
    });
  }

  Future<Pokemon> getPokemon(String name) async {
    return dio.get<JsonMap>(
      '/pokemon/$name',
    ).then((response) {
      return Pokemon.fromJson(response.data!);
    });
  }
}
