import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  String _email = '', _password = '';
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  String get email => _email;
  String get password => _password;

  void onEmailChanged(String text) {
    _email = text;
    notifyListeners();
  }

  void onPasswordChanged(String text) {
    _password = text;
    notifyListeners();
  }
}
