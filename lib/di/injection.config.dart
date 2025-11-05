// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo/di/register_modules.dart' as _i904;
import 'package:demo/feature/article/bloc/all_articles_bloc.dart' as _i697;
import 'package:demo/feature/article/bloc/category_bloc.dart' as _i1039;
import 'package:demo/feature/article/data/article_repository.dart' as _i748;
import 'package:demo/feature/article/data/article_service.dart' as _i508;
import 'package:demo/feature/favourites/bloc/favourites_bloc.dart' as _i128;
import 'package:demo/feature/favourites/data/favourites_repository.dart'
    as _i813;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i1039.CategoryBloc>(() => _i1039.CategoryBloc());
    gh.lazySingleton<_i361.Dio>(() => appModule.dio());
    gh.lazySingleton<_i813.IFavouritesRepository>(
      () => _i813.LocalFavouriteRepository(),
    );
    gh.lazySingleton<_i508.ArticleService>(
      () => appModule.articleService(gh<_i361.Dio>()),
    );
    gh.singleton<_i128.FavouritesBLoC>(
      () => _i128.FavouritesBLoC(
        favouritesRepository: gh<_i813.IFavouritesRepository>(),
      ),
    );
    gh.lazySingleton<_i748.IArticleRepository>(
      () => _i748.ArticleRepository(articleService: gh<_i508.ArticleService>()),
    );
    gh.factory<_i697.ArticleBloc>(
      () =>
          _i697.ArticleBloc(articleRepository: gh<_i748.IArticleRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i904.AppModule {}
