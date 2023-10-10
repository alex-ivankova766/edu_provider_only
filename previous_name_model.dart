import 'package:flutter/material.dart';

class PreviousNameModel extends ChangeNotifier {
  String _name = ' ';
  String get name => _name;
  void previousName() {
    _name = 'Sanjib';
    notifyListeners();
  }
}
