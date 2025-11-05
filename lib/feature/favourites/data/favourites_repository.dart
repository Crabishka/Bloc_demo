import 'dart:convert';

import 'package:demo/models/article/article.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IFavouritesRepository {
  Future<List<Article>> getFavorites();

  Future<void> addToFavorites(Article item);

  Future<void> removeFromFavourites(Article item);
}

@LazySingleton(as: IFavouritesRepository)
class LocalFavouriteRepository implements IFavouritesRepository {
  final _storageKey = 'favorites';

  SharedPreferences? _preferences;

  Future<SharedPreferences> get _prefs async {
    _preferences ??= await SharedPreferences.getInstance();
    return _preferences!;
  }

  @override
  Future<List<Article>> getFavorites() async {
    try {
      final prefs = await _prefs;
      final jsonString = prefs.getString(_storageKey);

      if (jsonString == null || jsonString.isEmpty) {
        return [];
      }

      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList.map((json) => Article.fromJson(json as Map<String, dynamic>)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addToFavorites(Article article) async {
    try {
      final prefs = await _prefs;
      final favorites = await getFavorites();

      final exists = favorites.any((item) => item.title == article.title);
      if (exists) {
        return;
      }

      favorites.add(article);
      final jsonString = json.encode(favorites.map((article) => article.toJson()).toList());

      await prefs.setString(_storageKey, jsonString);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeFromFavourites(Article article) async {
    try {
      final prefs = await _prefs;
      final favorites = await getFavorites();

      favorites.removeWhere((item) => item.title == article.title);

      final jsonString = json.encode(favorites.map((article) => article.toJson()).toList());

      await prefs.setString(_storageKey, jsonString);
    } catch (e) {
      rethrow;
    }
  }
}
