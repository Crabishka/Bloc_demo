import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_source.freezed.dart';

part 'article_source.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleSource with _$ArticleSource {
  const ArticleSource({ this.id,  this.name});

  @override
  final String? id;
  @override
  final String? name;

  factory ArticleSource.fromJson(Map<String, dynamic> json) => _$ArticleSourceFromJson(json);

  Map<String, Object?> toJson() => _$ArticleSourceToJson(this);
}
