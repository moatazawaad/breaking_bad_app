class CharacterModel {
  late int charId;
  late String name;
  late String nickname;
  late String image;
  late List<dynamic> jobs;
  late String status;
  late List<dynamic> appearanceOfSeason;
  late String actorName;
  late String categoryForTwoSeries;
  late List<dynamic> betterCallSaulAppearance;

  CharacterModel({
    required this.charId,
    required this.name,
    required this.nickname,
    required this.image,
    required this.jobs,
    required this.status,
    required this.appearanceOfSeason,
    required this.actorName,
    required this.categoryForTwoSeries,
    required this.betterCallSaulAppearance,
  });

  CharacterModel.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    nickname = json['nickname'];
    image = json['image'];
    jobs = json['occupation'];
    status = json['status'];
    appearanceOfSeason = json['appearance'];
    actorName = json['portrayed'];
    categoryForTwoSeries = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
