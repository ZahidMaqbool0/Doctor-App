import 'package:flutter/cupertino.dart';

class ScheduleAppointmentProvider extends ChangeNotifier {

  // Controller
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final List<String> _time = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '13:00 PM',
    '14:00 PM',
    '15:00 PM',
    '16:00 PM',
    '17:00 PM',
    '18:00 PM',
    '19:00 PM',
    '20:00 PM',
  ];

  List<String> _personRelation = [
    'Son',
    'Daughter',
    'Father',
    'Mother',
    'Husband',
    'Wife',
    'Brother',
    'Sister',
    'Grandfather',
    'Grandmother',
    'Grandson',
    'Granddaughter',
    'Uncle',
    'Aunt',
    'Nephew',
    'Niece',
    'Cousin',
    'Father-in-law',
    'Mother-in-law',
    'Son-in-law',
    'Daughter-in-law',
    'Brother-in-law',
    'Sister-in-law',
    'Stepfather',
    'Stepmother',
    'Stepbrother',
    'Stepsister',
    'Stepson',
    'Stepdaughter',
    'Parents',
    'Children',
    'Spouse',
  ];

  int _selectedIndex = 0;
  DateTime _selectedDate = DateTime.now();
  String _selectedOption = 'forMe';
  String _relationShip = 'Single';
  String _selectedPersonRelation = 'Son';

  List<String> get getTime => _time;
  int get getSelectedIndex => _selectedIndex;
  DateTime get getSeclectedDate => _selectedDate;
  String get getSelectdOption => _selectedOption;
  String get getrelationShip => _relationShip;
  String get getPersonRelation => _selectedPersonRelation;
  List<String> get getPersonRealtionList => _personRelation;

  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void updateDate(DateTime newDate) {
    _selectedDate = newDate;
    notifyListeners();
  }

  String dayName(int weekday) {
    const List<String> days = [
      "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"
    ];
    return days[weekday - 1];
  }

  void updateOption(String newOption) {
    _selectedOption = newOption;
    notifyListeners();
  }


  void updateRelationShip(String newValue) {
    _relationShip = newValue;
    notifyListeners();
  }

  void updatePersonRelation(String newValue){
    _selectedPersonRelation = newValue;
    notifyListeners();
  }


}