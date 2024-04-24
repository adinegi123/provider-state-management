import 'package:flutter/material.dart';

class NameController extends ChangeNotifier {
  String _name = '';

  String get name => _name;

  void setName(String newName, {bool isUpdate = false}) {
    _name = newName;
    if (isUpdate) notifyListeners();
  }
}
