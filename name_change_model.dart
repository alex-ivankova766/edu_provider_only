import 'package:flutter/material.dart';

class NameChangeModel extends ChangeNotifier {
  String _name = 'Sanjib';
  String get name => _name;
  void changeName() {
    _name = 'John';
    notifyListeners();
  }
}
