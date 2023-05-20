import 'package:flutter/material.dart';

class MenuProviders extends ChangeNotifier {
  int itemselect = 1;
  setselect(int i) {
    itemselect = i;
    notifyListeners();
  }
}
