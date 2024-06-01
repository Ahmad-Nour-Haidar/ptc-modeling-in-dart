class AppCache {
  /// Singleton instance
  static AppCache? _instance;

  /// Private constructor
  AppCache._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory AppCache() {
    _instance ??= AppCache._();
    return _instance!;
  }

  final _cache = <String, Object>{};

  Object? getFromCache(String key) => _cache[key];

  void setInCache(String key, Object? value) {
    if (value == null) {
      _cache.remove(key);
    } else {
      _cache[key] = value;
    }
  }

  void clear() => _cache.clear();
}
