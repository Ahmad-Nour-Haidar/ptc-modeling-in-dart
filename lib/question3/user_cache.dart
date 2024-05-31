import 'package:faker/faker.dart';

class UserCache {
  /// Singleton instance
  static UserCache? _instance;

  /// Private constructor
  UserCache._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory UserCache() {
    _instance ??= UserCache._();
    return _instance!;
  }

  final _cache = {};

  Map<String, dynamic>? getUserById(int? id) {
    if (id == null || id < 0) return null;

    /// if cache not contain the specific ID, then it is null, so initial it and return.
    _cache[id] ??= _getFakeUser(id);
    return _cache[id];
  }

  Map<String, dynamic> _getFakeUser(int id) {
    final fakeUser = {
      "id": id,
      "first_name": faker.person.firstName(),
      "last_name": faker.person.lastName(),
      "about": faker.lorem.words(3).join(' '),
      "image": faker.image.image(),
    };
    return fakeUser;
  }
}
