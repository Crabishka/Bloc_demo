import 'package:bloc/bloc.dart';
import 'package:demo/feature/article/data/article_repository.dart';
import 'package:demo/models/article/article.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'all_articles_bloc.freezed.dart';

@freezed
abstract class ArticleEvent with _$ArticleEvent {
  const ArticleEvent._();

  const factory ArticleEvent.update({String? category}) = UpdateArticleEvent;

  const factory ArticleEvent.search({required String query, String? category}) = SearchArticleEvent;
}

@freezed
abstract class ArticleState with _$ArticleState {
  const ArticleState._();

  const factory ArticleState.initial() = InitialArticleState;

  const factory ArticleState.loading() = LoadingArticleState;

  const factory ArticleState.failed({required String message}) = FailedArticleState;

  const factory ArticleState.data({required List<Article> articles}) = DataArticleState;
}

@injectable
class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final IArticleRepository _articleRepository;

  ArticleBloc({required IArticleRepository articleRepository})
    : _articleRepository = articleRepository,
      super(const ArticleState.initial()) {
    on<UpdateArticleEvent>(_onUpdateArticles);
    on<SearchArticleEvent>(_onSearchArticles, transformer: debounce<SearchArticleEvent>(Duration(milliseconds: 300)));
  }

  Future<void> _onUpdateArticles(UpdateArticleEvent event, Emitter<ArticleState> emit) async {
    try {
      emit(const ArticleState.loading());

      final articles = await _articleRepository.getArticles(country: 'us', category: event.category);

      emit(ArticleState.data(articles: articles));
    } on DioException catch (e) {
      emit(ArticleState.failed(message: e.message ?? 'Не удалось загрузить новости'));
    } catch (e) {
      emit(ArticleState.failed(message: 'Не удалось загрузить новости'));
    }
  }

  Future<void> _onSearchArticles(SearchArticleEvent event, Emitter<ArticleState> emit) async {
    try {
      final articles = await _articleRepository.getArticles(
        country: 'us',
        category: event.category,
        query: event.query,
      );

      emit(ArticleState.data(articles: articles));
    } on DioException catch (e) {
      emit(ArticleState.failed(message: e.message ?? 'Не удалось загрузить новости'));
    } catch (e) {
      emit(ArticleState.failed(message: 'Не удалось загрузить новости'));
    }
  }
}

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}
