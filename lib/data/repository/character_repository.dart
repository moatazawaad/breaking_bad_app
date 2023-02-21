import 'package:breaking_bad_bloc/data/models/characters_model.dart';
import 'package:breaking_bad_bloc/data/web_services_api/character_web_service.dart';

class CharacterRepository {
  CharacterWebService characterWebService;

  CharacterRepository(this.characterWebService);

  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await characterWebService.getAllCharacters();
    return characters
        .map((character) => CharacterModel.fromJson(character))
        .toList();
  }
}
