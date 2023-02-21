import 'package:bloc/bloc.dart';
import 'package:breaking_bad_bloc/data/repository/character_repository.dart';
import 'package:meta/meta.dart';

import '../../data/models/characters_model.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepository characterRepository;

  List<CharacterModel> myCharacter = [];

  CharactersCubit(this.characterRepository) : super(CharactersInitial());

  List<CharacterModel> getAllCharacters() {
    characterRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      myCharacter = characters;
    });
    return myCharacter;
  }
}
