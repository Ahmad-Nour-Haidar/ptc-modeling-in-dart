import 'package:faker/faker.dart';

class Venues {
  /// Singleton instance
  static Venues? _instance;

  /// Private constructor
  Venues._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory Venues() {
    _instance ??= Venues._();
    return _instance!;
  }

  /// Lazy-loaded venues list
  List<String>? _venues;

  /// Loads venues if not already loaded
  Future<void> load() async {
    _venues ??= await _getVenues();
  }

  /// Reloads venues
  Future<void> reload() async {
    _venues = await _getVenues();
  }

  /// Retrieves venues from an external source (simulated here)
  Future<List<String>> _getVenues() async {
    return List.generate(
      1000,
      (index) => faker.lorem.words(2).join(' '),
    );
  }

  /// Gets the list of venues, ensuring they are loaded first
  List<String> get venues {
    if (_venues == null) {
      throw Exception('You should call Venues().load() first.');
    }
    return _venues!;
  }
}
