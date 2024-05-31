import 'package:faker/faker.dart' show faker, random;
import 'package:flutter/material.dart';
import 'package:ptc_modeling_in_dart/core/extensions/date_time_extension.dart';
import 'package:ptc_modeling_in_dart/core/extensions/string_extension.dart';
import 'package:ptc_modeling_in_dart/question1/models/company_model.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final company = Company(
      isActive: random.integer(1, min: 0),
      name: faker.company.name(),
      address: Address(
        street: faker.address.streetAddress(),
        city: faker.address.city(),
        state: faker.address.state(),
        postalCode: faker.address.countryCode(),
      ),
      established: faker.date.dateTime().toIso8601String(),
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
    //
    // print(company);
    //
    // /// dMMMyyyy => is an extension I created it.
    // /// lib/core/extensions/date_time_extension.dart
    // print(company.established.toDateTime.dMMMyyyy);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Name: ${company.name}'),
            Text('Active: ${company.isActive == 1 ? "Yes" : "No"}'),
            Text(company.address.toString()),
            Text('Established: ${company.established.toDateTime.toLocal()}'),
            const SizedBox(height: 20),
            const Text(
              'Departments:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...company.departments.map((dept) {
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
                      'Meeting Time: ${dept.meetingTime.toDateTime.dMMMyyyy}',
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
