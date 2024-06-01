import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:ptc_modeling_in_dart/question3/cache/app_cache.dart';

import '../../question1/models/freezed_models/company/company.dart';

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
    // final dataFromCache = AppCache().getFromCache(path);
    // if (dataFromCache != null) return dataFromCache;
    // try {
      // await Future.delayed(const Duration(seconds: 5));
      final jsonString = await rootBundle.loadString(path);
      print(jsonString);
      final jsonCompany = json.decode(jsonString)['company'];
      print(jsonCompany);
      final company = Company.fromJson(jsonCompany);
      print(company.runtimeType);
      print(company.departments[0].runtimeType);
      print(company.isActive);
      AppCache().setInCache(path, company);
      return company;
    // } catch (e) {
    //   return null;
    // }
  }

  /// Reloads cached object
  Future<Object?> reload(final String path) async {
    AppCache().setInCache(path, null);
    return await load(path);
  }
}
