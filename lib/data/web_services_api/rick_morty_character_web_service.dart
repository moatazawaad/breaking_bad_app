import 'package:breaking_bad_bloc/constants/app_strings/strings.dart';
import 'package:dio/dio.dart';

class RickMortyCharacterWebService {
  late Dio dio;

  RickMortyCharacterWebService() {
    BaseOptions options = BaseOptions(
      baseUrl: AppConstance.baseUrl,
      receiveDataWhenStatusError: true,
      receiveTimeout: 60 * 1000,
      connectTimeout: 60 * 1000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
