import 'dart:math';

import 'package:doctorapp/model/our_services_model.dart';
import 'package:flutter/material.dart';

class OurServicesProvider extends ChangeNotifier {

  List<OurServicesModel> get getOurServicesData => genrateData;

  bool _isLiked = false;

  bool get isLiked => _isLiked;

  void toggleIsLiked() {
    _isLiked = !_isLiked;
    notifyListeners();
  }
}

List<String> name = [
  'Blood Test',
  'Ultra Sound',
  'X-Ray',
  'Pap Smear',
  'Pharmacy',
  'Covid Test',
  'Vaccinations',
  'Minor Surgery',
  'ECG',
];

List<OurServicesModel> genrateData = List.generate(name.length, (index) {
  final random = Random();
  int randomReview = random.nextInt(100);
  double randomRating = double.parse((random.nextDouble() * 5).toStringAsFixed(1));
  int randomHours = random.nextInt(12);
  int randomMinutes = random.nextInt(60);
  int randomPrice = random.nextInt(5000);

  return OurServicesModel(
    imagUrlOurServices:
    'lib/assets/images/our_services_images/${name[index].toLowerCase().replaceAll(' ', '_')}.png',
    textServicesHeading: name[index],
    rating: randomRating,
    reviews: randomReview,
    price: randomPrice,
    openHours: {
      'monday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'tuesday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'wednesday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'thursday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'friday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'saturday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
      'sunday': {
        'openingTime': '${randomHours} : ${randomMinutes} AM',
        'closingTime': '${randomHours} : ${randomMinutes} PM'
      },
    },
    about:
    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  );
});




