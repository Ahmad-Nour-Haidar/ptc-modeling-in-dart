import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:ptc_modeling_in_dart/question3/cache/app_cache.dart';

import '../../question1/models/freezed_models/company/company_model.dart';

class CompaniesData {
  /// Singleton instance
  static CompaniesData? _instance;

  /// Private constructor
  CompaniesData._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory CompaniesData() {
    _instance ??= CompaniesData._();
    return _instance!;
  }

  /// Loads users if not already loaded
  Future<Object?> load(final String path) async {
    final dataFromCache = AppCache().getFromCache(path);
    if (dataFromCache != null) return dataFromCache;
    try {
      await Future.delayed(const Duration(seconds: 5));
      final jsonString = await rootBundle.loadString(path);
      final jsonData = json.decode(jsonString);
      final company = Company.fromJson(jsonData);
      return company;
    } catch (e) {
      return null;
    }
  }

  /// Reloads users
  Future<Object?> reload(final String path) async {
    AppCache().setInCache(path, null);
    return await load(path);
  }
}
