import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:ptc_modeling_in_dart/core/assets/app_attachments.dart';

class Languages {
  /// Singleton instance
  static Languages? _instance;

  /// Private constructor
  Languages._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory Languages() {
    _instance ??= Languages._();
    return _instance!;
  }

  /// Lazy-loaded languages list
  List<String>? _languages;

  /// Loads languages if not already loaded
  Future<void> load() async {
    _languages ??= await _getLanguages();
  }

  /// Reloads languages
  Future<void> reload() async {
    _languages = await _getLanguages();
  }

  /// Retrieves languages from an external source
  Future<List<String>> _getLanguages() async {
    List<String> items;
    const filePath = AppAttachments.languages;
    final jsonString = await rootBundle.loadString(filePath);
    items = await json.decode(jsonString);
    return items;
  }

  /// Gets the list of languages, ensuring they are loaded first
  List<String> get languages {
    if (_languages == null) {
      throw Exception('You should call Languages().load() first.');
    }
    return _languages!;
  }
}
