import 'package:demo/di/injection.dart';
import 'package:demo/feature/favourites/bloc/favourites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/feature/article/bloc/all_articles_bloc.dart';
import 'package:demo/feature/article/bloc/category_bloc.dart';
import 'package:demo/uikit/article_card.dart';
import 'package:go_router/go_router.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticleBloc>(create: (_) => getIt<ArticleBloc>()),
        BlocProvider<CategoryBloc>(
          create: (_) =>
              getIt<CategoryBloc>()..add(InitCategoryEvent(categories: categories, selected: categories.firstOrNull)),
        ),
      ],
      child: _ListenChangeCategory(child: _ArticleScreenView()),
    );
  }
}

class _ListenChangeCategory extends StatelessWidget {
  const _ListenChangeCategory({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final articleBloc = context.read<ArticleBloc>();
    final categoryBloc = context.read<CategoryBloc>();
    return BlocListener<CategoryBloc, CategoryState>(
      bloc: categoryBloc,
      listenWhen: (previous, current) {
        if (current is DataCategoryState && previous is DataCategoryState) {
          return previous.selected?.code != current.selected?.code;
        }
        if (current is DataCategoryState && previous is InitialCategoryState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is DataCategoryState) {
          articleBloc.add(UpdateArticleEvent(category: state.selected?.code));
        }
      },
      child: child,
    );
  }
}

class _ArticleScreenView extends StatelessWidget {
  const _ArticleScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            _CategoriesList(),
            SizedBox(height: 8),
            _SearchBar(),
            SizedBox(height: 8),
            Expanded(child: _ArticlesList()),
          ],
        ),
      ),
    );
  }
}

class _CategoriesList extends StatelessWidget {
  const _CategoriesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        if (state is! DataCategoryState) {
          return const SizedBox(height: 44, child: Center(child: CircularProgressIndicator()));
        }

        final categories = state.categories;
        final selected = state.selected;

        return SizedBox(
          height: 44,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: [
              for (final c in categories)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(c.title),
                    showCheckmark: false,

                    selected: selected?.code == c.code,
                    onSelected: (_) {
                      context.read<CategoryBloc>().add(CategoryEvent.select(category: c));
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _ArticlesList extends StatelessWidget {
  const _ArticlesList();

  @override
  Widget build(BuildContext context) {
    final favBloc = context.read<FavouritesBLoC>();
    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state is LoadingArticleState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FailedArticleState) {
          return Center(child: Text(state.message));
        }
        if (state is DataArticleState) {
          final items = state.articles;
          if (items.isEmpty) {
            return const Center(child: Text('Нет новостей'));
          }
          return BlocBuilder<FavouritesBLoC, FavouritesState>(
            builder: (context, favouritesState) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 16),
                itemBuilder: (context, i) {
                  final article = items[i];

                  final isFav =
                      favouritesState is DataFavouritesState &&
                      favouritesState.articles.any((a) => a.title == article.title);
                  return ArticleCard(
                    article: article,
                    isFavourite: isFav,
                    onOpen: () {
                      context.go('/news/detail', extra: article);
                    },
                    onToggleFavourite: () {
                      if (isFav) {
                        favBloc.add(FavouritesEvent.remove(article: article));
                      } else {
                        favBloc.add(FavouritesEvent.add(article: article));
                      }
                    },
                  );
                },
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Поиск новостей',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          isDense: true,
        ),
        onChanged: (value) {
          final catState = context.read<CategoryBloc>().state;
          final category = catState is DataCategoryState ? catState.selected?.code : null;
          final q = value.trim();
          if (q.isEmpty) {
            context.read<ArticleBloc>().add(ArticleEvent.update(category: category));
          } else {
            context.read<ArticleBloc>().add(ArticleEvent.search(query: q, category: category));
          }
        },
        onSubmitted: (value) {
          final catState = context.read<CategoryBloc>().state;
          final category = catState is DataCategoryState ? catState.selected?.code : null;
          final q = value.trim();
          if (q.isEmpty) {
            context.read<ArticleBloc>().add(ArticleEvent.update(category: category));
          } else {
            context.read<ArticleBloc>().add(ArticleEvent.search(query: q, category: category));
          }
        },
      ),
    );
  }
}
