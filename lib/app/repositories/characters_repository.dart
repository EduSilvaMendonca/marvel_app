import '../models/characters_model.dart';

abstract class ICharactersRepository {
  Future<List<CharactersModel>> getCharacters();
}
