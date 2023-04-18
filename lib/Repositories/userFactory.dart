import 'package:recipebox/Models/user.dart';

class userBank {
  final List<User> _users = [
    User('Abd9211', 'abdullahumarig1@gmail.com', '1234'),
    User('Toothless', 'leena051100@gmail.com', '1234'),
    User('Cheesus', 'm.umar@gmail.com', '1234'),
  ];

  bool findUser(String email, String pass) {
    for (User u in _users) {
      if (u.email == email) {
        if (u.password == pass) {
          return true;
        }
      }
    }
    return false;
  }

  void addUser(String username, String email, String pass) {
    _users.add(
      User(username, email, pass),
    );
  }
}
