import 'package:flutter/cupertino.dart';

import '../../data/models/rickmorty_characters_model.dart';

@immutable
abstract class RickMortyCharacterState {}

class RickMortyCharacterInitialState extends RickMortyCharacterState {}

class RickMortyCharacterLoadedState extends RickMortyCharacterState {
  final List<RickMortyCharacterModel> characters;

  RickMortyCharacterLoadedState(this.characters);
}
