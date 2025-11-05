// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticlesResponseDto _$ArticlesResponseDtoFromJson(Map<String, dynamic> json) =>
    _ArticlesResponseDto(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num?)?.toInt(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticlesResponseDtoToJson(
  _ArticlesResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'totalResults': instance.totalResults,
  'articles': instance.articles,
};

_ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => _ArticleDto(
  source: ArticleSourceDto.fromJson(json['source'] as Map<String, dynamic>),
  author: json['author'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  url: json['url'] as String,
  urlToImage: json['urlToImage'] as String?,
  publishedAt: DateTime.parse(json['publishedAt'] as String),
  content: json['content'] as String?,
);

Map<String, dynamic> _$ArticleDtoToJson(_ArticleDto instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'content': instance.content,
    };

_ArticleSourceDto _$ArticleSourceDtoFromJson(Map<String, dynamic> json) =>
    _ArticleSourceDto(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$ArticleSourceDtoToJson(_ArticleSourceDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
