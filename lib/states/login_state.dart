import 'package:flutter/material.dart';


class LoginState with ChangeNotifier {

  bool _loggedIn = false;
  bool _loading = false;
  String username = "";
  String password = "";
  var perfil;

  bool isLoggedIn() => _loggedIn;

  bool isLoading() => _loading;

  void setLoggedIn(bool state) {
    _loggedIn = state;
  }

  void setCredentials(String user, String pass) {}
  void login() async {
    _loading = true;
    notifyListeners();

    _loading = false;
    if (username != null) {
      _loggedIn = true;
      notifyListeners();
    } else {
      _loggedIn = false;
      notifyListeners();
    }
  }

  void logout() {
    _loggedIn = true;
    notifyListeners();
  }

}
