import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:faker/faker.dart';

Future<List<String>> getLanguages() async {
  List<String> items;
  String filePath = "assets/lottie/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = await json.decode(jsonString);
  return items;
}
