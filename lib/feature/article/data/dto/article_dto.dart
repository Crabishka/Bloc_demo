import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

@freezed
abstract class ArticlesResponseDto with _$ArticlesResponseDto {
  const factory ArticlesResponseDto({required String status, int? totalResults, required List<ArticleDto> articles}) =
      _ArticlesResponseDto;

  factory ArticlesResponseDto.fromJson(Map<String, dynamic> json) => _$ArticlesResponseDtoFromJson(json);
}

@freezed
abstract class ArticleDto with _$ArticleDto {
  const factory ArticleDto({
    required ArticleSourceDto source,
    String? author,
    required String title,
    String? description,
    required String url,
    String? urlToImage,
    required DateTime publishedAt,
    String? content,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);
}

@freezed
abstract class ArticleSourceDto with _$ArticleSourceDto {
  const factory ArticleSourceDto({String? id, String? name}) = _ArticleSourceDto;

  factory ArticleSourceDto.fromJson(Map<String, dynamic> json) => _$ArticleSourceDtoFromJson(json);
}
