import 'package:flutter/cupertino.dart';

class AnimalDataProvider with ChangeNotifier {
  int _currentIndex = 0;

  int getCurrentIndex() {
    return _currentIndex;
  }

  void changeCurrentIndex({required int index}) {
    _currentIndex = index;
    notifyListeners();
  }
}
