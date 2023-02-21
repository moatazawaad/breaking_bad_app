import 'package:breaking_bad_bloc/data/models/rickmorty_characters_model.dart';

import '../web_services_api/rick_morty_character_web_service.dart';

class RickMortyCharacterRepository {
  RickMortyCharacterWebService rickMortyCharacterWebService;

  RickMortyCharacterRepository(this.rickMortyCharacterWebService);

  Future<List<RickMortyCharacterModel>> getAllCharacters() async {
    final characters = await rickMortyCharacterWebService.getAllCharacters();
    return characters
        .map((character) => RickMortyCharacterModel.fromJson(character))
        .toList();
  }
}
