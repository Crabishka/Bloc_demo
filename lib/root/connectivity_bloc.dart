import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_bloc.freezed.dart';

@freezed
abstract class ConnectivityEvent with _$ConnectivityEvent {
  const ConnectivityEvent._();

  const factory ConnectivityEvent.check() = CheckConnectivityEvent;

  const factory ConnectivityEvent.statusChanged({required List<ConnectivityResult> result}) =
      ConnectivityStatusChangedEvent;
}

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const ConnectivityState._();

  const factory ConnectivityState.initial() = InitialConnectivityState;

  const factory ConnectivityState.connected() = ConnectedConnectivityState;

  const factory ConnectivityState.disconnected() = DisconnectedConnectivityState;
}

@Singleton()
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc() : super(const ConnectivityState.initial()) {
    on<ConnectivityEvent>(
      (event, emit) => event.map<Future<void>>(
        check: (event) => _check(event, emit),
        statusChanged: (event) => _statusChanged(event, emit),
      ),
    );

    _subscription = _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> result) {
      add(ConnectivityEvent.statusChanged(result: result));
    });

    add(const ConnectivityEvent.check());
  }

  final Connectivity _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  Future<void> _check(CheckConnectivityEvent event, Emitter<ConnectivityState> emit) async {
    try {
      final result = await _connectivity.checkConnectivity();

      /// иначе будет считать vpn за соединение
      final isConnected =
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.ethernet);
      if (isConnected) {
        emit(const ConnectivityState.connected());
      } else {
        emit(const ConnectivityState.disconnected());
      }
    } catch (e) {
      emit(const ConnectivityState.disconnected());
    }
  }

  Future<void> _statusChanged(ConnectivityStatusChangedEvent event, Emitter<ConnectivityState> emit) async {
    final result = event.result;
    final isConnected =
        result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.ethernet);
    if (isConnected) {
      emit(const ConnectivityState.connected());
    } else {
      emit(const ConnectivityState.disconnected());
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
