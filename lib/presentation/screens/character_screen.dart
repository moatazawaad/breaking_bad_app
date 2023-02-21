import 'package:breaking_bad_bloc/business_logic/cubit/rick_morty_character_cubit.dart';
import 'package:breaking_bad_bloc/business_logic/cubit/rick_morty_character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/app_colors/colors.dart';
import '../../data/models/rickmorty_characters_model.dart';
import '../widgets/character_item.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  // late List<CharacterModel> allCharacters;
  late List<RickMortyCharacterModel> allCharacter;

  @override
  void initState() {
    super.initState();
    // allCharacters =
    //     BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    allCharacter =
        BlocProvider.of<RickMortyCharacterCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColorYellow,
        title: const Text(
          'Characters',
          style: TextStyle(color: AppColors.appColorGrey),
        ),
      ),
      body: buildBlocBuilder(),
    );
  }

  Widget buildBlocBuilder() {
    return BlocBuilder<RickMortyCharacterCubit, RickMortyCharacterState>(
      builder: (context, state) {
        if (state is RickMortyCharacterLoadedState) {
          allCharacter = (state).characters;
          return buildLoadedList();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.appColorYellow,
      ),
    );
  }

  Widget buildLoadedList() {
    return SingleChildScrollView(
        child: Container(
      color: AppColors.appColorGrey,
      child: Column(
        children: [
          buildCharactersList(),
        ],
      ),
    ));
  }

  Widget buildCharactersList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: allCharacter.length,
      itemBuilder: (ctx, index) {
        return CharacterItem(
          model: allCharacter[index],
        );
      },
    );
  }
}
