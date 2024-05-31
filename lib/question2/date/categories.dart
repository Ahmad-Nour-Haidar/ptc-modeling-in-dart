import 'package:faker/faker.dart';

class Categories {
  /// Singleton instance
  static Categories? _instance;

  /// Private constructor
  Categories._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory Categories() {
    _instance ??= Categories._();
    return _instance!;
  }

  /// Lazy-loaded categories list
  List<String>? _categories;

  /// Loads categories if not already loaded
  Future<void> load() async {
    _categories ??= await _getCategories();
  }

  /// Reloads categories
  Future<void> reload() async {
    _categories = await _getCategories();
  }

  /// Retrieves categories from an external source (simulated here)
  Future<List<String>> _getCategories() async {
    return List.generate(
      1000,
      (index) => faker.lorem.words(3).join(' '),
    );
  }

  /// Gets the list of categories, ensuring they are loaded first
  List<String> get categories {
    if (_categories == null) {
      throw Exception('You should call Categories().load() first.');
    }
    return _categories!;
  }
}
