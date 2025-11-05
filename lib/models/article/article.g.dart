// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
  articleSource: ArticleSource.fromJson(
    json['article_source'] as Map<String, dynamic>,
  ),
  author: json['author'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  url: json['url'] as String,
  imageUrl: json['image_url'] as String?,
  publishedAt: json['published_at'] == null
      ? null
      : DateTime.parse(json['published_at'] as String),
  content: json['content'] as String,
);

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
  'article_source': instance.articleSource,
  'author': instance.author,
  'title': instance.title,
  'description': instance.description,
  'url': instance.url,
  'image_url': instance.imageUrl,
  'published_at': instance.publishedAt?.toIso8601String(),
  'content': instance.content,
};
