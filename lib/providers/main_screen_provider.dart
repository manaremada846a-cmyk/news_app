import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/categories_enum.dart';

class MainScreenProvider extends ChangeNotifier {
  CategoriesEnum? categoriesEnum;
  void changeCatigory(CategoriesEnum ?newChange) {
    categoriesEnum = newChange;
    notifyListeners();
  }
}
