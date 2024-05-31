import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/widgets/loading.dart';
import 'package:ptc_modeling_in_dart/question2/data/categories.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  bool _isLoading = false;
  final _categories = <String>[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initial();
    });
    super.initState();
  }

  Future<void> _initial() async {
    setState(() => _isLoading = true);
    await Categories().load();
    _categories.addAll(Categories().categories);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: _isLoading || _categories.isEmpty
          ? const LoadingWidget()
          : ListView.separated(
              itemCount: _categories.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  'Categories: ${_categories[index]}',
                ),
              ),
            ),
    );
  }
}
