import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:ptc_modeling_in_dart/core/assets/app_attachments.dart';

class UsersData {
  /// Singleton instance
  static UsersData? _instance;

  /// Private constructor
  UsersData._();

  /// Factory constructor for returning the singleton instance with lazy loading
  factory UsersData() {
    _instance ??= UsersData._();
    return _instance!;
  }

  /// Lazy-loaded users list
  List<int>? _users;

  /// Loads users if not already loaded
  Future<void> load() async {
    _users ??= await _getUsers();
  }

  /// Reloads users
  Future<void> reload() async {
    _users = await _getUsers();
  }

  /// Retrieves users from an external source
  Future<List<int>> _getUsers() async {
    await Future.delayed(const Duration(seconds: 5));
    List<int> items;
    const filePath = AppAttachments.users;
    final jsonString = await rootBundle.loadString(filePath);
    final List result = await json.decode(jsonString); // List<dynamic>
    items = result.map((e) => (e as Map)['id'] as int).toList();
    return items;
  }

  /// Gets the list of users, ensuring they are loaded first
  List<int> get users {
    if (_users == null) {
      throw Exception('You should call Users().load() first.');
    }
    return _users!;
  }
}
