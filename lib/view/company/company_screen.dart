import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/extensions/date_time_extension.dart';
import 'package:ptc_modeling_in_dart/core/widgets/loading.dart';

import '../../question1/models/freezed_models/company/company.dart';
import '../../question3/data/company_data.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({
    super.key,
    required this.path,
  });

  final String path;

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  Company? _company;
  bool _isLoading = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initial();
    });
    super.initState();
  }

  Future<void> _initial() async {
    setState(() => _isLoading = true);
    _company = await CompaniesData().load(widget.path) as Company;
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Details'),
      ),
      body: _isLoading
          ? const LoadingWidget()
          : _company == null
              ? const Text('Not Found...!')
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Text('Name: ${_company!.name}'),
                      Text('Active: ${_company!.isActive == 1 ? "Yes" : "No"}'),
                      Text((_company!.address ?? '').toString()),
                      Text('Established: ${_company!.established.dMMMyyyy}'),
                      const SizedBox(height: 20),
                      const Text(
                        'Departments:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ..._company!.departments.map((dept) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Department ID: ${dept.deptId}'),
                              Text('Name: ${dept.name}'),
                              Text('Manager: ${dept.manager}'),
                              Text('Budget: \$${dept.budget}'),
                              Text(
                                'Meeting Time: ${dept.meetingTime}',
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
    );
  }
}
