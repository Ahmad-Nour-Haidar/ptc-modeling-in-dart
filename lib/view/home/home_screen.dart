import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/assets/app_attachments.dart';
import 'package:ptc_modeling_in_dart/view/Venuse/venuse_screen.dart';
import 'package:ptc_modeling_in_dart/view/categories/categories_screen.dart';
import 'package:ptc_modeling_in_dart/view/languages/languages_screen.dart';
import 'package:ptc_modeling_in_dart/view/users/users_screen.dart';

import '../company/company_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void push(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            onTap: () => push(context, const CategoriesScreen()),
            title: const Text(
              'Show Categories',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () => push(context, const VenuseScreen()),
            title: const Text(
              'Show Venuse',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () => push(context, const LanguagesScreen()),
            title: const Text(
              'Show Languages',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () => push(context, const UsersScreen()),
            title: const Text(
              'Show Users',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () => push(
              context,
              const CompanyScreen(path: AppAttachments.test1),
            ),
            title: const Text(
              'Show Company test1',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            onTap: () => push(
              context,
              const CompanyScreen(path: AppAttachments.test2),
            ),
            title: const Text(
              'Show Company test2',
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
