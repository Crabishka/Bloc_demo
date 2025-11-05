// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_articles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticleEvent {

 String? get category;
/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleEventCopyWith<ArticleEvent> get copyWith => _$ArticleEventCopyWithImpl<ArticleEvent>(this as ArticleEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ArticleEvent(category: $category)';
}


}

/// @nodoc
abstract mixin class $ArticleEventCopyWith<$Res>  {
  factory $ArticleEventCopyWith(ArticleEvent value, $Res Function(ArticleEvent) _then) = _$ArticleEventCopyWithImpl;
@useResult
$Res call({
 String? category
});




}
/// @nodoc
class _$ArticleEventCopyWithImpl<$Res>
    implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._self, this._then);

  final ArticleEvent _self;
  final $Res Function(ArticleEvent) _then;

/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleEvent].
extension ArticleEventPatterns on ArticleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateArticleEvent value)?  update,TResult Function( SearchArticleEvent value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateArticleEvent() when update != null:
return update(_that);case SearchArticleEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateArticleEvent value)  update,required TResult Function( SearchArticleEvent value)  search,}){
final _that = this;
switch (_that) {
case UpdateArticleEvent():
return update(_that);case SearchArticleEvent():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateArticleEvent value)?  update,TResult? Function( SearchArticleEvent value)?  search,}){
final _that = this;
switch (_that) {
case UpdateArticleEvent() when update != null:
return update(_that);case SearchArticleEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? category)?  update,TResult Function( String query,  String? category)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateArticleEvent() when update != null:
return update(_that.category);case SearchArticleEvent() when search != null:
return search(_that.query,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? category)  update,required TResult Function( String query,  String? category)  search,}) {final _that = this;
switch (_that) {
case UpdateArticleEvent():
return update(_that.category);case SearchArticleEvent():
return search(_that.query,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? category)?  update,TResult? Function( String query,  String? category)?  search,}) {final _that = this;
switch (_that) {
case UpdateArticleEvent() when update != null:
return update(_that.category);case SearchArticleEvent() when search != null:
return search(_that.query,_that.category);case _:
  return null;

}
}

}

/// @nodoc


class UpdateArticleEvent extends ArticleEvent {
  const UpdateArticleEvent({this.category}): super._();
  

@override final  String? category;

/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateArticleEventCopyWith<UpdateArticleEvent> get copyWith => _$UpdateArticleEventCopyWithImpl<UpdateArticleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateArticleEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ArticleEvent.update(category: $category)';
}


}

/// @nodoc
abstract mixin class $UpdateArticleEventCopyWith<$Res> implements $ArticleEventCopyWith<$Res> {
  factory $UpdateArticleEventCopyWith(UpdateArticleEvent value, $Res Function(UpdateArticleEvent) _then) = _$UpdateArticleEventCopyWithImpl;
@override @useResult
$Res call({
 String? category
});




}
/// @nodoc
class _$UpdateArticleEventCopyWithImpl<$Res>
    implements $UpdateArticleEventCopyWith<$Res> {
  _$UpdateArticleEventCopyWithImpl(this._self, this._then);

  final UpdateArticleEvent _self;
  final $Res Function(UpdateArticleEvent) _then;

/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(UpdateArticleEvent(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SearchArticleEvent extends ArticleEvent {
  const SearchArticleEvent({required this.query, this.category}): super._();
  

 final  String query;
@override final  String? category;

/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchArticleEventCopyWith<SearchArticleEvent> get copyWith => _$SearchArticleEventCopyWithImpl<SearchArticleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchArticleEvent&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,query,category);

@override
String toString() {
  return 'ArticleEvent.search(query: $query, category: $category)';
}


}

/// @nodoc
abstract mixin class $SearchArticleEventCopyWith<$Res> implements $ArticleEventCopyWith<$Res> {
  factory $SearchArticleEventCopyWith(SearchArticleEvent value, $Res Function(SearchArticleEvent) _then) = _$SearchArticleEventCopyWithImpl;
@override @useResult
$Res call({
 String query, String? category
});




}
/// @nodoc
class _$SearchArticleEventCopyWithImpl<$Res>
    implements $SearchArticleEventCopyWith<$Res> {
  _$SearchArticleEventCopyWithImpl(this._self, this._then);

  final SearchArticleEvent _self;
  final $Res Function(SearchArticleEvent) _then;

/// Create a copy of ArticleEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? category = freezed,}) {
  return _then(SearchArticleEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ArticleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleState()';
}


}

/// @nodoc
class $ArticleStateCopyWith<$Res>  {
$ArticleStateCopyWith(ArticleState _, $Res Function(ArticleState) __);
}


/// Adds pattern-matching-related methods to [ArticleState].
extension ArticleStatePatterns on ArticleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialArticleState value)?  initial,TResult Function( LoadingArticleState value)?  loading,TResult Function( FailedArticleState value)?  failed,TResult Function( DataArticleState value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialArticleState() when initial != null:
return initial(_that);case LoadingArticleState() when loading != null:
return loading(_that);case FailedArticleState() when failed != null:
return failed(_that);case DataArticleState() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialArticleState value)  initial,required TResult Function( LoadingArticleState value)  loading,required TResult Function( FailedArticleState value)  failed,required TResult Function( DataArticleState value)  data,}){
final _that = this;
switch (_that) {
case InitialArticleState():
return initial(_that);case LoadingArticleState():
return loading(_that);case FailedArticleState():
return failed(_that);case DataArticleState():
return data(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialArticleState value)?  initial,TResult? Function( LoadingArticleState value)?  loading,TResult? Function( FailedArticleState value)?  failed,TResult? Function( DataArticleState value)?  data,}){
final _that = this;
switch (_that) {
case InitialArticleState() when initial != null:
return initial(_that);case LoadingArticleState() when loading != null:
return loading(_that);case FailedArticleState() when failed != null:
return failed(_that);case DataArticleState() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  failed,TResult Function( List<Article> articles)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialArticleState() when initial != null:
return initial();case LoadingArticleState() when loading != null:
return loading();case FailedArticleState() when failed != null:
return failed(_that.message);case DataArticleState() when data != null:
return data(_that.articles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  failed,required TResult Function( List<Article> articles)  data,}) {final _that = this;
switch (_that) {
case InitialArticleState():
return initial();case LoadingArticleState():
return loading();case FailedArticleState():
return failed(_that.message);case DataArticleState():
return data(_that.articles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  failed,TResult? Function( List<Article> articles)?  data,}) {final _that = this;
switch (_that) {
case InitialArticleState() when initial != null:
return initial();case LoadingArticleState() when loading != null:
return loading();case FailedArticleState() when failed != null:
return failed(_that.message);case DataArticleState() when data != null:
return data(_that.articles);case _:
  return null;

}
}

}

/// @nodoc


class InitialArticleState extends ArticleState {
  const InitialArticleState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialArticleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleState.initial()';
}


}




/// @nodoc


class LoadingArticleState extends ArticleState {
  const LoadingArticleState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingArticleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleState.loading()';
}


}




/// @nodoc


class FailedArticleState extends ArticleState {
  const FailedArticleState({required this.message}): super._();
  

 final  String message;

/// Create a copy of ArticleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailedArticleStateCopyWith<FailedArticleState> get copyWith => _$FailedArticleStateCopyWithImpl<FailedArticleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailedArticleState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ArticleState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailedArticleStateCopyWith<$Res> implements $ArticleStateCopyWith<$Res> {
  factory $FailedArticleStateCopyWith(FailedArticleState value, $Res Function(FailedArticleState) _then) = _$FailedArticleStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailedArticleStateCopyWithImpl<$Res>
    implements $FailedArticleStateCopyWith<$Res> {
  _$FailedArticleStateCopyWithImpl(this._self, this._then);

  final FailedArticleState _self;
  final $Res Function(FailedArticleState) _then;

/// Create a copy of ArticleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FailedArticleState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DataArticleState extends ArticleState {
  const DataArticleState({required final  List<Article> articles}): _articles = articles,super._();
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of ArticleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataArticleStateCopyWith<DataArticleState> get copyWith => _$DataArticleStateCopyWithImpl<DataArticleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataArticleState&&const DeepCollectionEquality().equals(other._articles, _articles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'ArticleState.data(articles: $articles)';
}


}

/// @nodoc
abstract mixin class $DataArticleStateCopyWith<$Res> implements $ArticleStateCopyWith<$Res> {
  factory $DataArticleStateCopyWith(DataArticleState value, $Res Function(DataArticleState) _then) = _$DataArticleStateCopyWithImpl;
@useResult
$Res call({
 List<Article> articles
});




}
/// @nodoc
class _$DataArticleStateCopyWithImpl<$Res>
    implements $DataArticleStateCopyWith<$Res> {
  _$DataArticleStateCopyWithImpl(this._self, this._then);

  final DataArticleState _self;
  final $Res Function(DataArticleState) _then;

/// Create a copy of ArticleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,}) {
  return _then(DataArticleState(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}


}

// dart format on
