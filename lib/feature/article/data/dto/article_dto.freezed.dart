// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticlesResponseDto {

 String get status; int? get totalResults; List<ArticleDto> get articles;
/// Create a copy of ArticlesResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesResponseDtoCopyWith<ArticlesResponseDto> get copyWith => _$ArticlesResponseDtoCopyWithImpl<ArticlesResponseDto>(this as ArticlesResponseDto, _$identity);

  /// Serializes this ArticlesResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'ArticlesResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $ArticlesResponseDtoCopyWith<$Res>  {
  factory $ArticlesResponseDtoCopyWith(ArticlesResponseDto value, $Res Function(ArticlesResponseDto) _then) = _$ArticlesResponseDtoCopyWithImpl;
@useResult
$Res call({
 String status, int? totalResults, List<ArticleDto> articles
});




}
/// @nodoc
class _$ArticlesResponseDtoCopyWithImpl<$Res>
    implements $ArticlesResponseDtoCopyWith<$Res> {
  _$ArticlesResponseDtoCopyWithImpl(this._self, this._then);

  final ArticlesResponseDto _self;
  final $Res Function(ArticlesResponseDto) _then;

/// Create a copy of ArticlesResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? totalResults = freezed,Object? articles = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: null == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticlesResponseDto].
extension ArticlesResponseDtoPatterns on ArticlesResponseDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticlesResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesResponseDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticlesResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ArticlesResponseDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticlesResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticlesResponseDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int? totalResults,  List<ArticleDto> articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesResponseDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int? totalResults,  List<ArticleDto> articles)  $default,) {final _that = this;
switch (_that) {
case _ArticlesResponseDto():
return $default(_that.status,_that.totalResults,_that.articles);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int? totalResults,  List<ArticleDto> articles)?  $default,) {final _that = this;
switch (_that) {
case _ArticlesResponseDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticlesResponseDto implements ArticlesResponseDto {
  const _ArticlesResponseDto({required this.status, this.totalResults, required final  List<ArticleDto> articles}): _articles = articles;
  factory _ArticlesResponseDto.fromJson(Map<String, dynamic> json) => _$ArticlesResponseDtoFromJson(json);

@override final  String status;
@override final  int? totalResults;
 final  List<ArticleDto> _articles;
@override List<ArticleDto> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of ArticlesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesResponseDtoCopyWith<_ArticlesResponseDto> get copyWith => __$ArticlesResponseDtoCopyWithImpl<_ArticlesResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticlesResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'ArticlesResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$ArticlesResponseDtoCopyWith<$Res> implements $ArticlesResponseDtoCopyWith<$Res> {
  factory _$ArticlesResponseDtoCopyWith(_ArticlesResponseDto value, $Res Function(_ArticlesResponseDto) _then) = __$ArticlesResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String status, int? totalResults, List<ArticleDto> articles
});




}
/// @nodoc
class __$ArticlesResponseDtoCopyWithImpl<$Res>
    implements _$ArticlesResponseDtoCopyWith<$Res> {
  __$ArticlesResponseDtoCopyWithImpl(this._self, this._then);

  final _ArticlesResponseDto _self;
  final $Res Function(_ArticlesResponseDto) _then;

/// Create a copy of ArticlesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? totalResults = freezed,Object? articles = null,}) {
  return _then(_ArticlesResponseDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>,
  ));
}


}


/// @nodoc
mixin _$ArticleDto {

 ArticleSourceDto get source; String? get author; String get title; String? get description; String get url; String? get urlToImage; DateTime get publishedAt; String? get content;
/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDtoCopyWith<ArticleDto> get copyWith => _$ArticleDtoCopyWithImpl<ArticleDto>(this as ArticleDto, _$identity);

  /// Serializes this ArticleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class $ArticleDtoCopyWith<$Res>  {
  factory $ArticleDtoCopyWith(ArticleDto value, $Res Function(ArticleDto) _then) = _$ArticleDtoCopyWithImpl;
@useResult
$Res call({
 ArticleSourceDto source, String? author, String title, String? description, String url, String? urlToImage, DateTime publishedAt, String? content
});


$ArticleSourceDtoCopyWith<$Res> get source;

}
/// @nodoc
class _$ArticleDtoCopyWithImpl<$Res>
    implements $ArticleDtoCopyWith<$Res> {
  _$ArticleDtoCopyWithImpl(this._self, this._then);

  final ArticleDto _self;
  final $Res Function(ArticleDto) _then;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? author = freezed,Object? title = null,Object? description = freezed,Object? url = null,Object? urlToImage = freezed,Object? publishedAt = null,Object? content = freezed,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ArticleSourceDto,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleSourceDtoCopyWith<$Res> get source {
  
  return $ArticleSourceDtoCopyWith<$Res>(_self.source, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleDto].
extension ArticleDtoPatterns on ArticleDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDto value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ArticleSourceDto source,  String? author,  String title,  String? description,  String url,  String? urlToImage,  DateTime publishedAt,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ArticleSourceDto source,  String? author,  String title,  String? description,  String url,  String? urlToImage,  DateTime publishedAt,  String? content)  $default,) {final _that = this;
switch (_that) {
case _ArticleDto():
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ArticleSourceDto source,  String? author,  String title,  String? description,  String url,  String? urlToImage,  DateTime publishedAt,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDto implements ArticleDto {
  const _ArticleDto({required this.source, this.author, required this.title, this.description, required this.url, this.urlToImage, required this.publishedAt, this.content});
  factory _ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);

@override final  ArticleSourceDto source;
@override final  String? author;
@override final  String title;
@override final  String? description;
@override final  String url;
@override final  String? urlToImage;
@override final  DateTime publishedAt;
@override final  String? content;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDtoCopyWith<_ArticleDto> get copyWith => __$ArticleDtoCopyWithImpl<_ArticleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ArticleDtoCopyWith<$Res> implements $ArticleDtoCopyWith<$Res> {
  factory _$ArticleDtoCopyWith(_ArticleDto value, $Res Function(_ArticleDto) _then) = __$ArticleDtoCopyWithImpl;
@override @useResult
$Res call({
 ArticleSourceDto source, String? author, String title, String? description, String url, String? urlToImage, DateTime publishedAt, String? content
});


@override $ArticleSourceDtoCopyWith<$Res> get source;

}
/// @nodoc
class __$ArticleDtoCopyWithImpl<$Res>
    implements _$ArticleDtoCopyWith<$Res> {
  __$ArticleDtoCopyWithImpl(this._self, this._then);

  final _ArticleDto _self;
  final $Res Function(_ArticleDto) _then;

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? author = freezed,Object? title = null,Object? description = freezed,Object? url = null,Object? urlToImage = freezed,Object? publishedAt = null,Object? content = freezed,}) {
  return _then(_ArticleDto(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ArticleSourceDto,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ArticleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleSourceDtoCopyWith<$Res> get source {
  
  return $ArticleSourceDtoCopyWith<$Res>(_self.source, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// @nodoc
mixin _$ArticleSourceDto {

 String? get id; String? get name;
/// Create a copy of ArticleSourceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleSourceDtoCopyWith<ArticleSourceDto> get copyWith => _$ArticleSourceDtoCopyWithImpl<ArticleSourceDto>(this as ArticleSourceDto, _$identity);

  /// Serializes this ArticleSourceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleSourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ArticleSourceDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ArticleSourceDtoCopyWith<$Res>  {
  factory $ArticleSourceDtoCopyWith(ArticleSourceDto value, $Res Function(ArticleSourceDto) _then) = _$ArticleSourceDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$ArticleSourceDtoCopyWithImpl<$Res>
    implements $ArticleSourceDtoCopyWith<$Res> {
  _$ArticleSourceDtoCopyWithImpl(this._self, this._then);

  final ArticleSourceDto _self;
  final $Res Function(ArticleSourceDto) _then;

/// Create a copy of ArticleSourceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleSourceDto].
extension ArticleSourceDtoPatterns on ArticleSourceDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleSourceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleSourceDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleSourceDto value)  $default,){
final _that = this;
switch (_that) {
case _ArticleSourceDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleSourceDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleSourceDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleSourceDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ArticleSourceDto():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ArticleSourceDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleSourceDto implements ArticleSourceDto {
  const _ArticleSourceDto({this.id, this.name});
  factory _ArticleSourceDto.fromJson(Map<String, dynamic> json) => _$ArticleSourceDtoFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of ArticleSourceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleSourceDtoCopyWith<_ArticleSourceDto> get copyWith => __$ArticleSourceDtoCopyWithImpl<_ArticleSourceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleSourceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleSourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ArticleSourceDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ArticleSourceDtoCopyWith<$Res> implements $ArticleSourceDtoCopyWith<$Res> {
  factory _$ArticleSourceDtoCopyWith(_ArticleSourceDto value, $Res Function(_ArticleSourceDto) _then) = __$ArticleSourceDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$ArticleSourceDtoCopyWithImpl<$Res>
    implements _$ArticleSourceDtoCopyWith<$Res> {
  __$ArticleSourceDtoCopyWithImpl(this._self, this._then);

  final _ArticleSourceDto _self;
  final $Res Function(_ArticleSourceDto) _then;

/// Create a copy of ArticleSourceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ArticleSourceDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
