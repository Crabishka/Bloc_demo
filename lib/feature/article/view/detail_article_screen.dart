import 'package:demo/models/article/article.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/feature/favourites/bloc/favourites_bloc.dart';

class DetailArticleScreen extends StatelessWidget {
  final Article article;

  const DetailArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String dateText = _formatDate(article.publishedAt);
    final String sourceText = article.articleSource.name ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text(article.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        actions: [
          BlocBuilder<FavouritesBLoC, FavouritesState>(
            builder: (context, state) {
              final isFav = state is DataFavouritesState &&
                  state.articles.any((a) => a.title == article.title);
              return IconButton(
                tooltip: isFav ? 'Убрать из избранного' : 'В избранное',
                icon: Icon(isFav ? Icons.favorite : Icons.favorite_border,
                    color: isFav ? Colors.redAccent : null),
                onPressed: () {
                  final bloc = context.read<FavouritesBLoC>();
                  if (isFav) {
                    bloc.add(FavouritesEvent.remove(article: article));
                  } else {
                    bloc.add(FavouritesEvent.add(article: article));
                  }
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (article.imageUrl != null && article.imageUrl!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                article.imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _ImagePlaceholder(),
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(height: 180, child: Center(child: CircularProgressIndicator()));
                },
              ),
            )
          else
            _ImagePlaceholder(),
          const SizedBox(height: 16),
          Text(article.title, style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.source, size: 16, color: theme.textTheme.bodySmall?.color),
              const SizedBox(width: 6),
              Flexible(child: Text(sourceText, style: theme.textTheme.bodySmall)),
              const SizedBox(width: 12),
              Icon(Icons.access_time, size: 16, color: theme.textTheme.bodySmall?.color),
              const SizedBox(width: 6),
              Text(dateText, style: theme.textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: 16),
          if (article.description.isNotEmpty) ...[
            Text(article.description, style: theme.textTheme.bodyLarge),
            const SizedBox(height: 12),
          ],
          if (article.content.isNotEmpty) Text(article.content, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.surfaceVariant;
    return Container(
      height: 180,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Icon(Icons.image, size: 48, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
    );
  }
}

String _formatDate(DateTime? dt) {
  if (dt == null) return '';
  final d = dt.toLocal();
  return DateFormat('dd.MM.yyyy HH:mm', 'ru').format(d);
}
