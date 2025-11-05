import 'package:bloc/bloc.dart';
import 'package:demo/feature/favourites/data/favourites_repository.dart';
import 'package:demo/models/article/article.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favourites_bloc.freezed.dart';

@freezed
abstract class FavouritesEvent with _$FavouritesEvent {
  const FavouritesEvent._();

  const factory FavouritesEvent.add({required Article article}) = AddFavouritesBlocEvent;

  const factory FavouritesEvent.remove({required Article article}) = RemoveFavouritesBlocEvent;

  const factory FavouritesEvent.update() = UpdateFavouritesBlocEvent;
}

@freezed
abstract class FavouritesState with _$FavouritesState {
  const FavouritesState._();

  const factory FavouritesState.initial() = InitialFavouritesState;

  const factory FavouritesState.loading() = LoadingFavouritesState;

  const factory FavouritesState.failed({String? message}) = FailedFavouritesState;

  const factory FavouritesState.data({required List<Article> articles}) = DataFavouritesState;
}

@Singleton()
class FavouritesBLoC extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBLoC({required this.favouritesRepository}) : super(const InitialFavouritesState()) {
    on<AddFavouritesBlocEvent>(_add);
    on<RemoveFavouritesBlocEvent>(_remove);
    on<UpdateFavouritesBlocEvent>(_update);
  }

  final IFavouritesRepository favouritesRepository;

  Future<void> _add(AddFavouritesBlocEvent event, Emitter<FavouritesState> emit) async {
    try {
      /// если есть данные - сразу добавляем в список для лушчего UX
      if (state is DataFavouritesState) {
        final currentState = state as DataFavouritesState;
        final currentArticles = currentState.articles;
        final updatedArticles = [event.article, ...currentArticles];
        emit(FavouritesState.data(articles: updatedArticles));
      }

      await favouritesRepository.addToFavorites(event.article);
    } catch (e) {
      emit(FavouritesState.failed(message: 'Не удалось добавить в избранное: ${e.toString()}'));
    }
  }

  Future<void> _remove(RemoveFavouritesBlocEvent event, Emitter<FavouritesState> emit) async {
    try {
      if (state is DataFavouritesState) {
        final currentState = state as DataFavouritesState;
        final updatedArticles = currentState.articles.where((item) => item.title != event.article.title).toList();
        emit(FavouritesState.data(articles: updatedArticles));
      }
      await favouritesRepository.removeFromFavourites(event.article);
    } catch (e) {
      emit(FavouritesState.failed(message: 'Не удалось удалить из избранного: ${e.toString()}'));
    }
  }

  Future<void> _update(UpdateFavouritesBlocEvent event, Emitter<FavouritesState> emit) async {
    try {
      emit(const FavouritesState.loading());
      final articles = await favouritesRepository.getFavorites();
      emit(FavouritesState.data(articles: articles));
    } catch (e) {
      emit(FavouritesState.failed(message: 'Не удалось загрузить избранное :('));
    }
  }
}
