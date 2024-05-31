import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/widgets/loading.dart';
import 'package:ptc_modeling_in_dart/question2/data/venues.dart';

class VenuseScreen extends StatefulWidget {
  const VenuseScreen({super.key});

  @override
  State<VenuseScreen> createState() => _VenuseScreenState();
}

class _VenuseScreenState extends State<VenuseScreen> {
  bool _isLoading = false;
  final _venuse = <String>[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initial();
    });
    super.initState();
  }

  Future<void> _initial() async {
    setState(() => _isLoading = true);
    await Venues().load();
    _venuse.addAll(Venues().venues);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Venues',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: _isLoading || _venuse.isEmpty
          ? const LoadingWidget()
          : ListView.separated(
              itemCount: _venuse.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  'Venuse: ${_venuse[index]}',
                ),
              ),
            ),
    );
  }
}
