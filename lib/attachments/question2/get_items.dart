import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:faker/faker.dart';


List<String> getVenues() {
  List<String> items = [];
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(2).join(' '));
  }
  return items;
}

Future<List<String>> getLanguages() async {
  List<String> items;
  String filePath = "assets/lottie/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = await json.decode(jsonString);
  return items;
}
