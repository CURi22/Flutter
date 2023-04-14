import 'package:flutter/material.dart';

class Context extends ChangeNotifier {
  dynamic state;

  void setState(dynamic state) {
    this.state = state;

    notifyListeners();
  }
}
