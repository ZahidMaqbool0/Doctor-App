import 'package:flutter/cupertino.dart';

class CustomGenderDropdownFieldProvider extends ChangeNotifier {
  String? _selectedGender;

  String? get selectedGender => _selectedGender;

  void setGender(String gender) {
    _selectedGender = gender;
    notifyListeners();
  }
}
