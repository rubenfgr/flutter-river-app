import 'package:dio/dio.dart';

class PokemonService {
  static Future<String> getPokemonName(int id) async {
    final dio = new Dio();

    await Future.delayed(Duration(seconds: 2));

    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');
      return response.data['name'];
    } catch (e) {
      print(e);
      throw new Exception('Pokemon not found');
    }
  }
}
