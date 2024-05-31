import 'package:faker/faker.dart' show faker, random;
import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/extensions/date_time_extension.dart';
import 'package:ptc_modeling_in_dart/question1/models/freezed_models/company/company.dart';
import 'package:ptc_modeling_in_dart/question2/data/categories.dart';
import 'package:ptc_modeling_in_dart/question2/data/languages.dart';
import 'package:ptc_modeling_in_dart/question2/data/venues.dart';
import 'package:ptc_modeling_in_dart/question3/data/users.dart';
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

  await Users().load();
  print(Users().users);

  /// Caching
  print((await UserCache().getUserById(1)));

  // will not change and get it quickly
  print((await UserCache().getUserById(1)));
  print((await UserCache().getUserById(1))?.completeName);

  final company = Company(
    isActive: random.integer(1, min: 0),
    name: faker.company.name(),
    address: Address(
      street: faker.address.streetAddress(),
      city: faker.address.city(),
      state: faker.address.state(),
      postalCode: faker.address.countryCode(),
    ),
    established: faker.date.dateTime(),
    departments: [
      Department(
        deptId: random.string(24, min: 8),
        name: faker.job.title(),
        manager: faker.person.name(),
        budget: random.integer(1000, min: 100).toDouble(),
        meetingTime: faker.date.dateTime(maxYear: 2024).toIso8601String(),
      ),
    ],
  );

  print(company);

  /// dMMMyyyy => is an extension I created it.
  /// lib/core/extensions/date_time_extension.dart
  print(company.established.dMMMyyyy);

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
