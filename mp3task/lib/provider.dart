import 'package:flutter/material.dart';

class ToDoProvider extends ChangeNotifier {
  int _touch = 0;
  int get touch => _touch;

  set touch(int newIndex) {
    _touch = newIndex;
    notifyListeners();
  }
}
