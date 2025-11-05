// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityEvent()';
}


}

/// @nodoc
class $ConnectivityEventCopyWith<$Res>  {
$ConnectivityEventCopyWith(ConnectivityEvent _, $Res Function(ConnectivityEvent) __);
}


/// Adds pattern-matching-related methods to [ConnectivityEvent].
extension ConnectivityEventPatterns on ConnectivityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckConnectivityEvent value)?  check,TResult Function( ConnectivityStatusChangedEvent value)?  statusChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckConnectivityEvent() when check != null:
return check(_that);case ConnectivityStatusChangedEvent() when statusChanged != null:
return statusChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckConnectivityEvent value)  check,required TResult Function( ConnectivityStatusChangedEvent value)  statusChanged,}){
final _that = this;
switch (_that) {
case CheckConnectivityEvent():
return check(_that);case ConnectivityStatusChangedEvent():
return statusChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckConnectivityEvent value)?  check,TResult? Function( ConnectivityStatusChangedEvent value)?  statusChanged,}){
final _that = this;
switch (_that) {
case CheckConnectivityEvent() when check != null:
return check(_that);case ConnectivityStatusChangedEvent() when statusChanged != null:
return statusChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  check,TResult Function( List<ConnectivityResult> result)?  statusChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckConnectivityEvent() when check != null:
return check();case ConnectivityStatusChangedEvent() when statusChanged != null:
return statusChanged(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  check,required TResult Function( List<ConnectivityResult> result)  statusChanged,}) {final _that = this;
switch (_that) {
case CheckConnectivityEvent():
return check();case ConnectivityStatusChangedEvent():
return statusChanged(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  check,TResult? Function( List<ConnectivityResult> result)?  statusChanged,}) {final _that = this;
switch (_that) {
case CheckConnectivityEvent() when check != null:
return check();case ConnectivityStatusChangedEvent() when statusChanged != null:
return statusChanged(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class CheckConnectivityEvent extends ConnectivityEvent {
  const CheckConnectivityEvent(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckConnectivityEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityEvent.check()';
}


}




/// @nodoc


class ConnectivityStatusChangedEvent extends ConnectivityEvent {
  const ConnectivityStatusChangedEvent({required final  List<ConnectivityResult> result}): _result = result,super._();
  

 final  List<ConnectivityResult> _result;
 List<ConnectivityResult> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}


/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityStatusChangedEventCopyWith<ConnectivityStatusChangedEvent> get copyWith => _$ConnectivityStatusChangedEventCopyWithImpl<ConnectivityStatusChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityStatusChangedEvent&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'ConnectivityEvent.statusChanged(result: $result)';
}


}

/// @nodoc
abstract mixin class $ConnectivityStatusChangedEventCopyWith<$Res> implements $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityStatusChangedEventCopyWith(ConnectivityStatusChangedEvent value, $Res Function(ConnectivityStatusChangedEvent) _then) = _$ConnectivityStatusChangedEventCopyWithImpl;
@useResult
$Res call({
 List<ConnectivityResult> result
});




}
/// @nodoc
class _$ConnectivityStatusChangedEventCopyWithImpl<$Res>
    implements $ConnectivityStatusChangedEventCopyWith<$Res> {
  _$ConnectivityStatusChangedEventCopyWithImpl(this._self, this._then);

  final ConnectivityStatusChangedEvent _self;
  final $Res Function(ConnectivityStatusChangedEvent) _then;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(ConnectivityStatusChangedEvent(
result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<ConnectivityResult>,
  ));
}


}

/// @nodoc
mixin _$ConnectivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState()';
}


}

/// @nodoc
class $ConnectivityStateCopyWith<$Res>  {
$ConnectivityStateCopyWith(ConnectivityState _, $Res Function(ConnectivityState) __);
}


/// Adds pattern-matching-related methods to [ConnectivityState].
extension ConnectivityStatePatterns on ConnectivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialConnectivityState value)?  initial,TResult Function( ConnectedConnectivityState value)?  connected,TResult Function( DisconnectedConnectivityState value)?  disconnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialConnectivityState() when initial != null:
return initial(_that);case ConnectedConnectivityState() when connected != null:
return connected(_that);case DisconnectedConnectivityState() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialConnectivityState value)  initial,required TResult Function( ConnectedConnectivityState value)  connected,required TResult Function( DisconnectedConnectivityState value)  disconnected,}){
final _that = this;
switch (_that) {
case InitialConnectivityState():
return initial(_that);case ConnectedConnectivityState():
return connected(_that);case DisconnectedConnectivityState():
return disconnected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialConnectivityState value)?  initial,TResult? Function( ConnectedConnectivityState value)?  connected,TResult? Function( DisconnectedConnectivityState value)?  disconnected,}){
final _that = this;
switch (_that) {
case InitialConnectivityState() when initial != null:
return initial(_that);case ConnectedConnectivityState() when connected != null:
return connected(_that);case DisconnectedConnectivityState() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  connected,TResult Function()?  disconnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialConnectivityState() when initial != null:
return initial();case ConnectedConnectivityState() when connected != null:
return connected();case DisconnectedConnectivityState() when disconnected != null:
return disconnected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  connected,required TResult Function()  disconnected,}) {final _that = this;
switch (_that) {
case InitialConnectivityState():
return initial();case ConnectedConnectivityState():
return connected();case DisconnectedConnectivityState():
return disconnected();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  connected,TResult? Function()?  disconnected,}) {final _that = this;
switch (_that) {
case InitialConnectivityState() when initial != null:
return initial();case ConnectedConnectivityState() when connected != null:
return connected();case DisconnectedConnectivityState() when disconnected != null:
return disconnected();case _:
  return null;

}
}

}

/// @nodoc


class InitialConnectivityState extends ConnectivityState {
  const InitialConnectivityState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.initial()';
}


}




/// @nodoc


class ConnectedConnectivityState extends ConnectivityState {
  const ConnectedConnectivityState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.connected()';
}


}




/// @nodoc


class DisconnectedConnectivityState extends ConnectivityState {
  const DisconnectedConnectivityState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisconnectedConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.disconnected()';
}


}




// dart format on
