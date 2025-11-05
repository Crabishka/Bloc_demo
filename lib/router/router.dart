import 'package:demo/feature/article/view/article_screen.dart';
import 'package:demo/feature/article/view/detail_article_screen.dart';
import 'package:demo/feature/favourites/view/favoruites_screen.dart';
import 'package:demo/root/root_screen.dart';

import 'package:go_router/go_router.dart';

import 'package:demo/models/article/article.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/news',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootScreen(shell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/news',
              name: 'news',
              builder: (context, state) => const ArticlesScreen(),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) {
                    final article = state.extra as Article;
                    return DetailArticleScreen(article: article);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favourites',
              name: 'favourites',
              builder: (context, state) => const FavouritesScreen(),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) {
                    final article = state.extra as Article;
                    return DetailArticleScreen(article: article);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
