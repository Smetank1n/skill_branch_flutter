
import 'package:models/user.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
   User user = User(name: name, phone: phone, email: email);
  }
