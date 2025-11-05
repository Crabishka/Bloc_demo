import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_bloc.freezed.dart';

/// захардкоженые на фронте категории
final categories = const [
  AppCategory(code: 'general', title: 'Главное'),
  AppCategory(code: 'health', title: 'Здоровье'),
  AppCategory(code: 'business', title: 'Бизнес'),
  AppCategory(code: 'entertainment', title: 'Развлечение'),
  AppCategory(code: 'technology', title: 'Технологии'),
  AppCategory(code: 'sports', title: 'Спорт'),
  AppCategory(code: 'science', title: 'Наука'),
];

/// моделька для представления
@immutable
class AppCategory {
  final String code;
  final String title;

  const AppCategory({required this.code, required this.title});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppCategory && runtimeType == other.runtimeType && code == other.code;

  @override
  int get hashCode => code.hashCode;
}

@freezed
abstract class CategoryEvent with _$CategoryEvent {
  const CategoryEvent._();

  /// можно инитить сразу с выбранным
  const factory CategoryEvent.init({required List<AppCategory> categories, AppCategory? selected}) = InitCategoryEvent;

  const factory CategoryEvent.select({required AppCategory category}) = SelectCategoryEvent;
}

@freezed
abstract class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState.initial() = InitialCategoryState;

  const factory CategoryState.data({required List<AppCategory> categories, AppCategory? selected}) = DataCategoryState;
}

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState.initial()) {
    on<InitCategoryEvent>(_onInit);
    on<SelectCategoryEvent>(_onSelect);
  }

  void _onInit(InitCategoryEvent event, Emitter<CategoryState> emit) {
    final cats = [...event.categories];
    final selected = event.selected != null && cats.contains(event.selected) ? event.selected : null;
    emit(CategoryState.data(categories: cats, selected: selected));
  }

  void _onSelect(SelectCategoryEvent event, Emitter<CategoryState> emit) {
    final current = state;
    if (current is DataCategoryState) {
      if (!current.categories.contains(event.category)) {
        emit(CategoryState.data(categories: current.categories, selected: current.selected));
        return;
      }
      emit(CategoryState.data(categories: current.categories, selected: event.category));
    }
  }
}
