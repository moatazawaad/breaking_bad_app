import 'package:breaking_bad_bloc/business_logic/cubit/rick_morty_character_cubit.dart';
import 'package:breaking_bad_bloc/constants/app_strings/strings.dart';
import 'package:breaking_bad_bloc/data/repository/rick_morty_character_repository.dart';
import 'package:breaking_bad_bloc/data/web_services_api/rick_morty_character_web_service.dart';
import 'package:breaking_bad_bloc/presentation/screens/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class AppRouter {
//   late CharacterRepository characterRepository;
//   late CharactersCubit charactersCubit;
//
//   AppRouter() {
//     characterRepository = CharacterRepository(CharacterWebService());
//     charactersCubit = CharactersCubit(characterRepository);
//   }
//
//   Route? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case AppConstance.charactersScreen:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (BuildContext context) => charactersCubit,
//             child: const CharacterScreen(),
//           ),
//         );
//       case AppConstance.charactersDetailsScreen:
//         return MaterialPageRoute(builder: (_) => CharacterDetailScreen());
//     }
//   }
// }

class AppRouter {
  late RickMortyCharacterRepository rickMortyCharacterRepository;
  late RickMortyCharacterCubit rickMortyCharacterCubit;

  AppRouter() {
    rickMortyCharacterRepository =
        RickMortyCharacterRepository(RickMortyCharacterWebService());
    rickMortyCharacterCubit =
        RickMortyCharacterCubit(rickMortyCharacterRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppConstance.charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => rickMortyCharacterCubit,
            child: const CharacterScreen(),
          ),
        );
      // case AppConstance.charactersDetailsScreen:
      //   return MaterialPageRoute(builder: (_) => CharacterDetailScreen());
    }
  }
}
