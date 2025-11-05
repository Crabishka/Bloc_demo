import 'package:demo/models/article/article_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

part 'article.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Article with _$Article {
  const Article({
    required this.articleSource,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
    required this.publishedAt,
    required this.content,
  });

  @override
  final ArticleSource articleSource;
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String? imageUrl;
  @override
  final DateTime? publishedAt;
  @override
  final String content;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, Object?> toJson() => _$ArticleToJson(this);
}
