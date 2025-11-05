import 'package:demo/feature/article/data/article_service.dart';
import 'package:demo/feature/article/data/dto/article_dto.dart';
import 'package:demo/models/article/article.dart';
import 'package:demo/models/article/article_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract interface class IArticleRepository {
  Future<List<Article>> getArticles({String? country, String? category, String? query});
}

@LazySingleton(as: IArticleRepository)
class ArticleRepository implements IArticleRepository {
  final ArticleService _articleService;

  ArticleRepository({required ArticleService articleService}) : _articleService = articleService;

  @override
  Future<List<Article>> getArticles({String? country, String? category, String? query}) async {
    try {
      final response = await _articleService.getTopHeadlines(country: country, category: category, query: query);

      return _mapArticles(response.articles);
    } on DioException catch (e) {
      rethrow;
    } catch (e) {
      throw Exception('Ошибка получения новостей');
    }
  }

  List<Article> _mapArticles(List<ArticleDto> dtos) {
    return dtos.map((dto) => _mapArticle(dto)).toList();
  }

  Article _mapArticle(ArticleDto dto) {
    return Article(
      articleSource: _mapArticleSource(dto.source),
      author: dto.author ?? 'Неизвестен',
      title: dto.title,
      description: dto.description ?? '',
      url: dto.url,
      imageUrl: dto.urlToImage,
      publishedAt: dto.publishedAt,
      content: dto.content ?? '',
    );
  }

  ArticleSource _mapArticleSource(ArticleSourceDto dto) {
    return ArticleSource(id: dto.id, name: dto.name);
  }
}
