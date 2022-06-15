import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/characters_model.dart';
import 'characters_repository.dart';

class CharactersRepositoryImpl implements ICharactersRepository {
  Dio dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));
  final url =
      'http://gateway.marvel.com/v1/public/characters?apikey=40ec2d1b56e1e3bf5e29db57241c9468&ts=edulindao&hash=69c8caec3acfa5cb9694626d013159e3&limit=100';

  @override
  Future<List<CharactersModel>> getCharacters() async {
    try {
      final response = await dio.get(url);
      final charList = List.from(response.data['data']['results'])
          .map((e) => CharactersModel.fromJson(e))
          .toList();
      return charList;
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }
}
