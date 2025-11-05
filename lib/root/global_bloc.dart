import 'package:demo/di/injection.dart';
import 'package:demo/feature/favourites/bloc/favourites_bloc.dart';
import 'package:demo/root/connectivity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// инициализация Bloc'ов, которые нужны всему приложению
/// можно заменить Redux'ом или классом в RxDart
class GlobalBloc extends StatelessWidget {
  const GlobalBloc({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesBLoC>(create: (_) => getIt<FavouritesBLoC>()..add(const FavouritesEvent.update())),
        BlocProvider<ConnectivityBloc>(create: (_) => getIt<ConnectivityBloc>()),
      ],
      child: child,
    );
  }
}
