import 'package:lib/models/string_utils.dart';

class User {
  String email;
  String phone;

  String _lastName;
  String _firstName;

  User._({String firstName, String lastName, String phone, String email});

  factory User({String name, String phone, String email}) {
    if (name.isEmpty) throw Exception("User name is empty");
    if (phone.isEmpty || email.isEmpty) throw Exception("Phone or Email is empty");

    return User._(
    firstName: _getFirstName(name),
    lastName: _getLastName(name),
    phone: checkPhone(phone),
    email: checkEmail(email));
  }
  static String _getLastName(String userName) => userName.split("")[1];
  static String _getFirstName(String userName) => userName.split("")[0];

  static String checkPhone(String phone) {
    String pattern = r"^(?:+0])?[0-9]{11}";

    phone =  phone.replaceAll(RegExp("[^+\\d]"), "");

}
}
