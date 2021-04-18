/// Entité User
class User {
  String gender;

  String title;

  String firstName;

  String lastName;

  String email;

  String city;

  String state;

  String country;

  dynamic postcode;

  String street;

  int streetNumber;

  String phone;

  String cell;

  String dob;

  int age;

  String thumbnail;

  String picture;

  String nat;

  User(
      {required this.gender,
      required this.picture,
      required this.dob,
      required this.age,
      required this.thumbnail,
      required this.cell,
      required this.lastName,
      required this.title,
      required this.firstName,
      required this.email,
      required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.phone,
      required this.postcode,
      required this.streetNumber,
      required this.nat});
}
