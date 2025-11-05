// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouritesEvent()';
}


}

/// @nodoc
class $FavouritesEventCopyWith<$Res>  {
$FavouritesEventCopyWith(FavouritesEvent _, $Res Function(FavouritesEvent) __);
}


/// Adds pattern-matching-related methods to [FavouritesEvent].
extension FavouritesEventPatterns on FavouritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddFavouritesBlocEvent value)?  add,TResult Function( RemoveFavouritesBlocEvent value)?  remove,TResult Function( UpdateFavouritesBlocEvent value)?  update,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddFavouritesBlocEvent() when add != null:
return add(_that);case RemoveFavouritesBlocEvent() when remove != null:
return remove(_that);case UpdateFavouritesBlocEvent() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddFavouritesBlocEvent value)  add,required TResult Function( RemoveFavouritesBlocEvent value)  remove,required TResult Function( UpdateFavouritesBlocEvent value)  update,}){
final _that = this;
switch (_that) {
case AddFavouritesBlocEvent():
return add(_that);case RemoveFavouritesBlocEvent():
return remove(_that);case UpdateFavouritesBlocEvent():
return update(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddFavouritesBlocEvent value)?  add,TResult? Function( RemoveFavouritesBlocEvent value)?  remove,TResult? Function( UpdateFavouritesBlocEvent value)?  update,}){
final _that = this;
switch (_that) {
case AddFavouritesBlocEvent() when add != null:
return add(_that);case RemoveFavouritesBlocEvent() when remove != null:
return remove(_that);case UpdateFavouritesBlocEvent() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Article article)?  add,TResult Function( Article article)?  remove,TResult Function()?  update,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddFavouritesBlocEvent() when add != null:
return add(_that.article);case RemoveFavouritesBlocEvent() when remove != null:
return remove(_that.article);case UpdateFavouritesBlocEvent() when update != null:
return update();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Article article)  add,required TResult Function( Article article)  remove,required TResult Function()  update,}) {final _that = this;
switch (_that) {
case AddFavouritesBlocEvent():
return add(_that.article);case RemoveFavouritesBlocEvent():
return remove(_that.article);case UpdateFavouritesBlocEvent():
return update();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Article article)?  add,TResult? Function( Article article)?  remove,TResult? Function()?  update,}) {final _that = this;
switch (_that) {
case AddFavouritesBlocEvent() when add != null:
return add(_that.article);case RemoveFavouritesBlocEvent() when remove != null:
return remove(_that.article);case UpdateFavouritesBlocEvent() when update != null:
return update();case _:
  return null;

}
}

}

/// @nodoc


class AddFavouritesBlocEvent extends FavouritesEvent {
  const AddFavouritesBlocEvent({required this.article}): super._();
  

 final  Article article;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFavouritesBlocEventCopyWith<AddFavouritesBlocEvent> get copyWith => _$AddFavouritesBlocEventCopyWithImpl<AddFavouritesBlocEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFavouritesBlocEvent&&(identical(other.article, article) || other.article == article));
}


@override
int get hashCode => Object.hash(runtimeType,article);

@override
String toString() {
  return 'FavouritesEvent.add(article: $article)';
}


}

/// @nodoc
abstract mixin class $AddFavouritesBlocEventCopyWith<$Res> implements $FavouritesEventCopyWith<$Res> {
  factory $AddFavouritesBlocEventCopyWith(AddFavouritesBlocEvent value, $Res Function(AddFavouritesBlocEvent) _then) = _$AddFavouritesBlocEventCopyWithImpl;
@useResult
$Res call({
 Article article
});


$ArticleCopyWith<$Res> get article;

}
/// @nodoc
class _$AddFavouritesBlocEventCopyWithImpl<$Res>
    implements $AddFavouritesBlocEventCopyWith<$Res> {
  _$AddFavouritesBlocEventCopyWithImpl(this._self, this._then);

  final AddFavouritesBlocEvent _self;
  final $Res Function(AddFavouritesBlocEvent) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? article = null,}) {
  return _then(AddFavouritesBlocEvent(
article: null == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as Article,
  ));
}

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleCopyWith<$Res> get article {
  
  return $ArticleCopyWith<$Res>(_self.article, (value) {
    return _then(_self.copyWith(article: value));
  });
}
}

/// @nodoc


class RemoveFavouritesBlocEvent extends FavouritesEvent {
  const RemoveFavouritesBlocEvent({required this.article}): super._();
  

 final  Article article;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFavouritesBlocEventCopyWith<RemoveFavouritesBlocEvent> get copyWith => _$RemoveFavouritesBlocEventCopyWithImpl<RemoveFavouritesBlocEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavouritesBlocEvent&&(identical(other.article, article) || other.article == article));
}


@override
int get hashCode => Object.hash(runtimeType,article);

@override
String toString() {
  return 'FavouritesEvent.remove(article: $article)';
}


}

/// @nodoc
abstract mixin class $RemoveFavouritesBlocEventCopyWith<$Res> implements $FavouritesEventCopyWith<$Res> {
  factory $RemoveFavouritesBlocEventCopyWith(RemoveFavouritesBlocEvent value, $Res Function(RemoveFavouritesBlocEvent) _then) = _$RemoveFavouritesBlocEventCopyWithImpl;
@useResult
$Res call({
 Article article
});


$ArticleCopyWith<$Res> get article;

}
/// @nodoc
class _$RemoveFavouritesBlocEventCopyWithImpl<$Res>
    implements $RemoveFavouritesBlocEventCopyWith<$Res> {
  _$RemoveFavouritesBlocEventCopyWithImpl(this._self, this._then);

  final RemoveFavouritesBlocEvent _self;
  final $Res Function(RemoveFavouritesBlocEvent) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? article = null,}) {
  return _then(RemoveFavouritesBlocEvent(
article: null == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as Article,
  ));
}

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticleCopyWith<$Res> get article {
  
  return $ArticleCopyWith<$Res>(_self.article, (value) {
    return _then(_self.copyWith(article: value));
  });
}
}

/// @nodoc


class UpdateFavouritesBlocEvent extends FavouritesEvent {
  const UpdateFavouritesBlocEvent(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFavouritesBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouritesEvent.update()';
}


}




/// @nodoc
mixin _$FavouritesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouritesState()';
}


}

/// @nodoc
class $FavouritesStateCopyWith<$Res>  {
$FavouritesStateCopyWith(FavouritesState _, $Res Function(FavouritesState) __);
}


/// Adds pattern-matching-related methods to [FavouritesState].
extension FavouritesStatePatterns on FavouritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialFavouritesState value)?  initial,TResult Function( LoadingFavouritesState value)?  loading,TResult Function( FailedFavouritesState value)?  failed,TResult Function( DataFavouritesState value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialFavouritesState() when initial != null:
return initial(_that);case LoadingFavouritesState() when loading != null:
return loading(_that);case FailedFavouritesState() when failed != null:
return failed(_that);case DataFavouritesState() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialFavouritesState value)  initial,required TResult Function( LoadingFavouritesState value)  loading,required TResult Function( FailedFavouritesState value)  failed,required TResult Function( DataFavouritesState value)  data,}){
final _that = this;
switch (_that) {
case InitialFavouritesState():
return initial(_that);case LoadingFavouritesState():
return loading(_that);case FailedFavouritesState():
return failed(_that);case DataFavouritesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialFavouritesState value)?  initial,TResult? Function( LoadingFavouritesState value)?  loading,TResult? Function( FailedFavouritesState value)?  failed,TResult? Function( DataFavouritesState value)?  data,}){
final _that = this;
switch (_that) {
case InitialFavouritesState() when initial != null:
return initial(_that);case LoadingFavouritesState() when loading != null:
return loading(_that);case FailedFavouritesState() when failed != null:
return failed(_that);case DataFavouritesState() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String? message)?  failed,TResult Function( List<Article> articles)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialFavouritesState() when initial != null:
return initial();case LoadingFavouritesState() when loading != null:
return loading();case FailedFavouritesState() when failed != null:
return failed(_that.message);case DataFavouritesState() when data != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String? message)  failed,required TResult Function( List<Article> articles)  data,}) {final _that = this;
switch (_that) {
case InitialFavouritesState():
return initial();case LoadingFavouritesState():
return loading();case FailedFavouritesState():
return failed(_that.message);case DataFavouritesState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String? message)?  failed,TResult? Function( List<Article> articles)?  data,}) {final _that = this;
switch (_that) {
case InitialFavouritesState() when initial != null:
return initial();case LoadingFavouritesState() when loading != null:
return loading();case FailedFavouritesState() when failed != null:
return failed(_that.message);case DataFavouritesState() when data != null:
return data(_that.articles);case _:
  return null;

}
}

}

/// @nodoc


class InitialFavouritesState extends FavouritesState {
  const InitialFavouritesState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialFavouritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouritesState.initial()';
}


}




/// @nodoc


class LoadingFavouritesState extends FavouritesState {
  const LoadingFavouritesState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingFavouritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouritesState.loading()';
}


}




/// @nodoc


class FailedFavouritesState extends FavouritesState {
  const FailedFavouritesState({this.message}): super._();
  

 final  String? message;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailedFavouritesStateCopyWith<FailedFavouritesState> get copyWith => _$FailedFavouritesStateCopyWithImpl<FailedFavouritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailedFavouritesState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavouritesState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailedFavouritesStateCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory $FailedFavouritesStateCopyWith(FailedFavouritesState value, $Res Function(FailedFavouritesState) _then) = _$FailedFavouritesStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$FailedFavouritesStateCopyWithImpl<$Res>
    implements $FailedFavouritesStateCopyWith<$Res> {
  _$FailedFavouritesStateCopyWithImpl(this._self, this._then);

  final FailedFavouritesState _self;
  final $Res Function(FailedFavouritesState) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(FailedFavouritesState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DataFavouritesState extends FavouritesState {
  const DataFavouritesState({required final  List<Article> articles}): _articles = articles,super._();
  

 final  List<Article> _articles;
 List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataFavouritesStateCopyWith<DataFavouritesState> get copyWith => _$DataFavouritesStateCopyWithImpl<DataFavouritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataFavouritesState&&const DeepCollectionEquality().equals(other._articles, _articles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'FavouritesState.data(articles: $articles)';
}


}

/// @nodoc
abstract mixin class $DataFavouritesStateCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory $DataFavouritesStateCopyWith(DataFavouritesState value, $Res Function(DataFavouritesState) _then) = _$DataFavouritesStateCopyWithImpl;
@useResult
$Res call({
 List<Article> articles
});




}
/// @nodoc
class _$DataFavouritesStateCopyWithImpl<$Res>
    implements $DataFavouritesStateCopyWith<$Res> {
  _$DataFavouritesStateCopyWithImpl(this._self, this._then);

  final DataFavouritesState _self;
  final $Res Function(DataFavouritesState) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,}) {
  return _then(DataFavouritesState(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}


}

// dart format on
