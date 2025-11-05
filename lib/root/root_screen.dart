import 'package:demo/root/connectivity_bloc.dart';
import 'package:demo/root/global_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return GlobalBloc(
      child: Scaffold(
        body: Column(
          children: [
            BlocBuilder<ConnectivityBloc, ConnectivityState>(
              builder: (context, state) {
                return state.maybeWhen(
                  disconnected: () => Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    color: Colors.red,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wifi_off, color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Нет подключения к интернету',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            Expanded(child: shell),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Новости'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Избранное'),
          ],
          currentIndex: shell.currentIndex,
          onTap: (int idx) => _onItemTapped(idx),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    shell.goBranch(index, initialLocation: false);
  }
}
