import 'package:flutter/cupertino.dart';

class BottomNavBarVM with ChangeNotifier {
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;

    notifyListeners();
  }
}
