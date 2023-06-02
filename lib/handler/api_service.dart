import 'package:dio/dio.dart';
import 'package:pokedex/handler/pokemon_handler.dart';

const String baseUrl = "https://pokeapi.co/api/v2";

class ApiService {
  ApiService._();

  static Dio dio = Dio(BaseOptions(baseUrl: baseUrl));
  static PokeApiHandler pokeApiHandler = PokeApiHandler(dio);
}
