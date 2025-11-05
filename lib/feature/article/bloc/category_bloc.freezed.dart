// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryEvent].
extension CategoryEventPatterns on CategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitCategoryEvent value)?  init,TResult Function( SelectCategoryEvent value)?  select,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitCategoryEvent() when init != null:
return init(_that);case SelectCategoryEvent() when select != null:
return select(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitCategoryEvent value)  init,required TResult Function( SelectCategoryEvent value)  select,}){
final _that = this;
switch (_that) {
case InitCategoryEvent():
return init(_that);case SelectCategoryEvent():
return select(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitCategoryEvent value)?  init,TResult? Function( SelectCategoryEvent value)?  select,}){
final _that = this;
switch (_that) {
case InitCategoryEvent() when init != null:
return init(_that);case SelectCategoryEvent() when select != null:
return select(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<AppCategory> categories,  AppCategory? selected)?  init,TResult Function( AppCategory category)?  select,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitCategoryEvent() when init != null:
return init(_that.categories,_that.selected);case SelectCategoryEvent() when select != null:
return select(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<AppCategory> categories,  AppCategory? selected)  init,required TResult Function( AppCategory category)  select,}) {final _that = this;
switch (_that) {
case InitCategoryEvent():
return init(_that.categories,_that.selected);case SelectCategoryEvent():
return select(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<AppCategory> categories,  AppCategory? selected)?  init,TResult? Function( AppCategory category)?  select,}) {final _that = this;
switch (_that) {
case InitCategoryEvent() when init != null:
return init(_that.categories,_that.selected);case SelectCategoryEvent() when select != null:
return select(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class InitCategoryEvent extends CategoryEvent with DiagnosticableTreeMixin {
  const InitCategoryEvent({required final  List<AppCategory> categories, this.selected}): _categories = categories,super._();
  

 final  List<AppCategory> _categories;
 List<AppCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  AppCategory? selected;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitCategoryEventCopyWith<InitCategoryEvent> get copyWith => _$InitCategoryEventCopyWithImpl<InitCategoryEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryEvent.init'))
    ..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('selected', selected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitCategoryEvent&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),selected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryEvent.init(categories: $categories, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $InitCategoryEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $InitCategoryEventCopyWith(InitCategoryEvent value, $Res Function(InitCategoryEvent) _then) = _$InitCategoryEventCopyWithImpl;
@useResult
$Res call({
 List<AppCategory> categories, AppCategory? selected
});




}
/// @nodoc
class _$InitCategoryEventCopyWithImpl<$Res>
    implements $InitCategoryEventCopyWith<$Res> {
  _$InitCategoryEventCopyWithImpl(this._self, this._then);

  final InitCategoryEvent _self;
  final $Res Function(InitCategoryEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? selected = freezed,}) {
  return _then(InitCategoryEvent(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AppCategory>,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as AppCategory?,
  ));
}


}

/// @nodoc


class SelectCategoryEvent extends CategoryEvent with DiagnosticableTreeMixin {
  const SelectCategoryEvent({required this.category}): super._();
  

 final  AppCategory category;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectCategoryEventCopyWith<SelectCategoryEvent> get copyWith => _$SelectCategoryEventCopyWithImpl<SelectCategoryEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryEvent.select'))
    ..add(DiagnosticsProperty('category', category));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectCategoryEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryEvent.select(category: $category)';
}


}

/// @nodoc
abstract mixin class $SelectCategoryEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $SelectCategoryEventCopyWith(SelectCategoryEvent value, $Res Function(SelectCategoryEvent) _then) = _$SelectCategoryEventCopyWithImpl;
@useResult
$Res call({
 AppCategory category
});




}
/// @nodoc
class _$SelectCategoryEventCopyWithImpl<$Res>
    implements $SelectCategoryEventCopyWith<$Res> {
  _$SelectCategoryEventCopyWithImpl(this._self, this._then);

  final SelectCategoryEvent _self;
  final $Res Function(SelectCategoryEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(SelectCategoryEvent(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AppCategory,
  ));
}


}

/// @nodoc
mixin _$CategoryState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryState()';
}


}

/// @nodoc
class $CategoryStateCopyWith<$Res>  {
$CategoryStateCopyWith(CategoryState _, $Res Function(CategoryState) __);
}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialCategoryState value)?  initial,TResult Function( DataCategoryState value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialCategoryState() when initial != null:
return initial(_that);case DataCategoryState() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialCategoryState value)  initial,required TResult Function( DataCategoryState value)  data,}){
final _that = this;
switch (_that) {
case InitialCategoryState():
return initial(_that);case DataCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialCategoryState value)?  initial,TResult? Function( DataCategoryState value)?  data,}){
final _that = this;
switch (_that) {
case InitialCategoryState() when initial != null:
return initial(_that);case DataCategoryState() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<AppCategory> categories,  AppCategory? selected)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialCategoryState() when initial != null:
return initial();case DataCategoryState() when data != null:
return data(_that.categories,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<AppCategory> categories,  AppCategory? selected)  data,}) {final _that = this;
switch (_that) {
case InitialCategoryState():
return initial();case DataCategoryState():
return data(_that.categories,_that.selected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<AppCategory> categories,  AppCategory? selected)?  data,}) {final _that = this;
switch (_that) {
case InitialCategoryState() when initial != null:
return initial();case DataCategoryState() when data != null:
return data(_that.categories,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class InitialCategoryState extends CategoryState with DiagnosticableTreeMixin {
  const InitialCategoryState(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryState.initial()';
}


}




/// @nodoc


class DataCategoryState extends CategoryState with DiagnosticableTreeMixin {
  const DataCategoryState({required final  List<AppCategory> categories, this.selected}): _categories = categories,super._();
  

 final  List<AppCategory> _categories;
 List<AppCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  AppCategory? selected;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCategoryStateCopyWith<DataCategoryState> get copyWith => _$DataCategoryStateCopyWithImpl<DataCategoryState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CategoryState.data'))
    ..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('selected', selected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataCategoryState&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),selected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CategoryState.data(categories: $categories, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $DataCategoryStateCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $DataCategoryStateCopyWith(DataCategoryState value, $Res Function(DataCategoryState) _then) = _$DataCategoryStateCopyWithImpl;
@useResult
$Res call({
 List<AppCategory> categories, AppCategory? selected
});




}
/// @nodoc
class _$DataCategoryStateCopyWithImpl<$Res>
    implements $DataCategoryStateCopyWith<$Res> {
  _$DataCategoryStateCopyWithImpl(this._self, this._then);

  final DataCategoryState _self;
  final $Res Function(DataCategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? selected = freezed,}) {
  return _then(DataCategoryState(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AppCategory>,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as AppCategory?,
  ));
}


}

// dart format on
