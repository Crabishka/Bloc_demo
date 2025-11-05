import 'package:demo/feature/article/data/dto/article_dto.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'article_service.g.dart';

@RestApi()
abstract class ArticleService {
  factory ArticleService(Dio dio, {String baseUrl}) = _ArticleService;

  @GET('/top-headlines')
  Future<ArticlesResponseDto> getTopHeadlines({
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('q') String? query,
  });
}
