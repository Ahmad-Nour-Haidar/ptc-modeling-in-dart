class Company {
  final int isActive;
  final String name;
  final Address address;
  final String established;
  final List<Department> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      isActive: json['is_active'],
      name: json['name'],
      address: Address.fromJson(json['address']),
      established: json['established'],
      departments: (json['departments'] as List)
          .map((i) => Department.fromJson(i))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'is_active': isActive,
      'name': name,
      'address': address.toJson(),
      'established': established,
      'departments': departments.map((d) => d.toJson()).toList(),
    };
  }
}

class Address {
  final String street;
  final String city;
  final String state;
  final String postalCode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      postalCode: json['postalCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'state': state,
      'postalCode': postalCode,
    };
  }
}

class Department {
  final String deptId;
  final String name;
  final String manager;
  final double budget;
  final int? year;
  final Availability? availability;
  final String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      deptId: json['deptId'],
      name: json['name'],
      manager: json['manager'],
      budget: json['budget'],
      year: json['year'],
      availability: json['availability'] != null
          ? Availability.fromJson(json['availability'])
          : null,
      meetingTime: json['meeting_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deptId': deptId,
      'name': name,
      'manager': manager,
      'budget': budget,
      'year': year,
      'availability': availability?.toJson(),
      'meeting_time': meetingTime,
    };
  }
}

class Availability {
  final bool online;
  final bool inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

  factory Availability.fromJson(Map<String, dynamic> json) {
    return Availability(
      online: json['online'],
      inStore: json['inStore'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'online': online,
      'inStore': inStore,
    };
  }
}
