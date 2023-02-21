import 'package:breaking_bad_bloc/constants/app_colors/colors.dart';
import 'package:breaking_bad_bloc/data/models/rickmorty_characters_model.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final RickMortyCharacterModel model;

  const CharacterItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColors.appColorWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        // onTap: () => Navigator.pushNamed(context, CharacterDetailScreen(),
        //     arguments: model),
        child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              model.name,
              style: const TextStyle(
                height: 1.3,
                fontSize: 16,
                color: AppColors.appColorWhite,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          child: Hero(
            tag: model.id,
            child: Container(
              color: AppColors.appColorGrey,
              child: model.image.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/images/loading.gif',
                      image: model.image,
                      fit: BoxFit.cover,
                    )
                  : Image.asset('assets/images/placeholder.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
