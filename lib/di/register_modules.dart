import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:demo/feature/article/data/article_service.dart';

const String kNewsApiBaseUrl = 'https://newsapi.org/v2';
const String kNewsApiKey = 'e689314be39442a6bc7a7a9b15205c01';

@module
abstract class AppModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: kNewsApiBaseUrl,
        headers: {'X-Api-Key': kNewsApiKey},
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    return dio;
  }

  @lazySingleton
  ArticleService articleService(Dio dio) => ArticleService(dio);
}
