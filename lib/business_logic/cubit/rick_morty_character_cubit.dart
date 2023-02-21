import 'package:breaking_bad_bloc/business_logic/cubit/rick_morty_character_state.dart';
import 'package:breaking_bad_bloc/data/repository/rick_morty_character_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/rickmorty_characters_model.dart';

class RickMortyCharacterCubit extends Cubit<RickMortyCharacterState> {
  final RickMortyCharacterRepository rickMortyCharacterRepository;

  List<RickMortyCharacterModel> myCharacters = [];

  RickMortyCharacterCubit(this.rickMortyCharacterRepository)
      : super(RickMortyCharacterInitialState());

  List<RickMortyCharacterModel> getAllCharacters() {
    rickMortyCharacterRepository.getAllCharacters().then((characters) {
      emit(RickMortyCharacterLoadedState(characters));
      myCharacters = characters;
      // print(myCharacters);
    });
    return myCharacters;
  }
}
