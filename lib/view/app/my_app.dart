import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/view/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.blue,
            letterSpacing: 1.0,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
