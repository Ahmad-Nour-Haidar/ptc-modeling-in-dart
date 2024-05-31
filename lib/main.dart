import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/view/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // /// Lazy Loading
  // // first time will take a few seconds
  // await Categories().load();
  // print(Categories().categories);
  //
  // // another calls will be faster as data is already loaded
  // await Categories().load();
  // print(Categories().categories);
  //
  // await Venues().load();
  // print(Venues().venues);
  //
  // await Languages().load();
  // print(Languages().languages);
  //
  // await Users().load();
  // print(Users().users);
  //
  // /// Caching
  // print((await UserCache().getUserById(1)));
  //
  // // will not change and get it quickly
  // print((await UserCache().getUserById(1)));
  // print((await UserCache().getUserById(1))?.completeName);

  runApp(const MyApp());
}
