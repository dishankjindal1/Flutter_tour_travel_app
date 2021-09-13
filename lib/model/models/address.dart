class Address {
  String address_1;
  String address_2;
  String city;
  String state;
  String country;

  Address({
    required this.address_1,
    required this.address_2,
    required this.city,
    required this.state,
    required this.country,
  });

  factory Address.fromJson(Map<dynamic, dynamic> json) {
    return Address(
      address_1: json['address_1'],
      address_2: json['address_2'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
    );
  }
}