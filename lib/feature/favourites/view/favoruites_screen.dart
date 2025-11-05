import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:demo/feature/favourites/bloc/favourites_bloc.dart';
import 'package:demo/uikit/article_card.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<FavouritesBLoC>().add(const FavouritesEvent.update());
        },
        child: BlocBuilder<FavouritesBLoC, FavouritesState>(
          builder: (context, state) {
            if (state is LoadingFavouritesState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is FailedFavouritesState) {
              return Center(child: Text(state.message ?? 'Ошибка'));
            }
            if (state is DataFavouritesState) {
              final items = state.articles;
              if (items.isEmpty) {
                return const Center(child: Text('Пока пусто'));
              }
              return ListView.separated(
                key: const PageStorageKey('favourites_list'),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 16),
                itemBuilder: (context, i) {
                  final article = items[i];
                  return ArticleCard(
                    article: article,
                    isFavourite: true,
                    onOpen: () {
                      context.go('/favourites/detail', extra: article);
                    },
                    onToggleFavourite: () {
                      context.read<FavouritesBLoC>().add(FavouritesEvent.remove(article: article));
                    },
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
