import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/question3/data/users.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool isLoading = false;
  final _ids = <int>[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initial();
    });
    super.initState();
  }

  Future<void> _initial() async {
    setState(() => isLoading = true);
    await Users().load();
    _ids.clear();
    _ids.addAll(Users().users);
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: isLoading || _ids.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                color: Colors.lightGreenAccent,
              ),
            )
          : ListView.separated(
              itemCount: _ids.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  'User ID: $index',
                ),
              ),
            ),
    );
  }
}
