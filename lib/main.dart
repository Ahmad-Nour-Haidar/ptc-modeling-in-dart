import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/question2/data/categories.dart';
import 'package:ptc_modeling_in_dart/question2/data/languages.dart';
import 'package:ptc_modeling_in_dart/question2/data/venues.dart';
import 'package:ptc_modeling_in_dart/question3/user_cache.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Lazy Loading
  // first time will take a few seconds
  await Categories().load();
  print(Categories().categories);

  // another calls will be faster as data is already loaded
  await Categories().load();
  print(Categories().categories);

  await Venues().load();
  print(Venues().venues);

  await Languages().load();
  print(Languages().languages);

  /// Caching
  print(UserCache().getUserById(1));

  // will not change
  print(UserCache().getUserById(1));
  print(UserCache().getUserById(1)?.completeName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
