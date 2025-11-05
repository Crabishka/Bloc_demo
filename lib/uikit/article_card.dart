import 'package:demo/models/article/article.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';

const cardHeight = 120.0;
const imageWidth = 80.0;

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.article, this.onOpen, this.onToggleFavourite, this.isFavourite = false});

  final Article article;
  final VoidCallback? onOpen;
  final VoidCallback? onToggleFavourite;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final imageUrl = article.imageUrl;
    final dateText = _formatDate(article.publishedAt);

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onOpen,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Thumbnail(imageUrl: imageUrl),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      article.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(dateText),
                        Spacer(),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            isFavourite ? Icons.favorite : Icons.favorite_border,
                            color: isFavourite ? Colors.redAccent : theme.iconTheme.color,
                          ),
                          onPressed: onToggleFavourite,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return _PlaceholderBox(width: imageWidth, height: cardHeight);
    }

    return CachedNetworkImage(imageUrl: imageUrl ?? '', width: imageWidth, height: cardHeight, fit: BoxFit.cover);
  }
}

class _PlaceholderBox extends StatelessWidget {
  const _PlaceholderBox({required this.width, required this.height, this.showSpinner = false});

  final double width;
  final double height;
  final bool showSpinner;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.surfaceVariant;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: showSpinner
            ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
            : Icon(Icons.image, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
      ),
    );
  }
}

String _formatDate(DateTime? dateTime) {
  if (dateTime == null) return '';
  final d = dateTime.toLocal();
  final formatter = DateFormat('dd MMMM HH:mm', 'ru');
  final result = formatter.format(d);
  return result;
}
