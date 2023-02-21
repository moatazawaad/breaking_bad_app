// class RickMortyCharacterModel {
//   List<RickMortyCharacterDataList> characterList = [];
//
//   RickMortyCharacterModel.fromJson(Map<String, dynamic> json) {
//     json['results'].forEach((element) {
//       characterList.add(RickMortyCharacterDataList.fromJson(element));
//     });
//   }
// }
//
// class RickMortyCharacterDataList {
//   late int id;
//   late String name;
//   late String status;
//   late String species;
//   late String gender;
//   late String image;
//   late List<dynamic> episode;
//
//   RickMortyCharacterDataList(this.id, this.name, this.status, this.species,
//       this.gender, this.image, this.episode);
//
//   RickMortyCharacterDataList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     status = json['status'];
//     species = json['species'];
//     gender = json['gender'];
//     image = json['image'];
//     episode = json['episode'];
//   }
// }

class RickMortyCharacterModel {
  late int id;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  late List<dynamic> episode;

  RickMortyCharacterModel(
    this.id,
    this.name,
    this.status,
    this.species,
    this.gender,
    this.image,
    this.episode,
  );

  RickMortyCharacterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    gender = json['gender'];
    image = json['image'];
    episode = json['episode'];
  }
}
