import 'address.dart';

class User {
  int id;
  String name;
  bool status;
  Address address;

  User({
    required this.id,
    required this.name,
    required this.status,
    required this.address,
  });

  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      address: json['address'],
    );
  }
}
