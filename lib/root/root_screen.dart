import 'package:demo/root/global_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return GlobalBloc(
      child: Scaffold(
        body: shell,
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
    shell.goBranch(index, initialLocation: index != shell.currentIndex);
  }
}
