import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/widgets/loading.dart';
import 'package:ptc_modeling_in_dart/question3/data/users.dart';
import 'package:ptc_modeling_in_dart/view/users/user_details_screen.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool _isLoading = false;
  final _ids = <int>[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initial();
    });
    super.initState();
  }

  Future<void> _initial() async {
    setState(() => _isLoading = true);
    await Users().load();
    _ids.addAll(Users().users);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: _isLoading || _ids.isEmpty
          ? const LoadingWidget()
          : ListView.separated(
              itemCount: _ids.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (_, index) => ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UserDetailsScreen(
                        id: _ids[index],
                      ),
                    ),
                  );
                },
                title: Text(
                  'User ID: $index',
                ),
              ),
            ),
    );
  }
}
