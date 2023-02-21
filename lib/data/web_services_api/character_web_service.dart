import 'package:dio/dio.dart';

import '../../constants/app_strings/strings.dart';

class CharacterWebService {
  late Dio dio;

  CharacterWebService() {
    BaseOptions options = BaseOptions(
      baseUrl: AppConstance.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 20 seconds
      receiveTimeout: 20 * 1000, // 20 seconds
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
