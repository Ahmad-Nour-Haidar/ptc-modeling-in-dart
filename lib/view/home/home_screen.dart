import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/view/Venuse/venuse_screen.dart';
import 'package:ptc_modeling_in_dart/view/categories/categories_screen.dart';
import 'package:ptc_modeling_in_dart/view/languages/languages_screen.dart';
import 'package:ptc_modeling_in_dart/view/users/users_screen.dart';

import '../company/company_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoriesScreen(),
                ),
              );
            },
            title: const Text(
              'Show Categories',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VenuseScreen(),
                ),
              );
            },
            title: const Text(
              'Show Venuse',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LanguagesScreen(),
                ),
              );
            },
            title: const Text(
              'Show Languages',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UsersScreen(),
                ),
              );
            },
            title: const Text(
              'Show Users',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CompanyScreen(),
                ),
              );
            },
            title: const Text(
              'Show Company',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
