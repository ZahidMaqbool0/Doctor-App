import 'package:doctorapp/model/health_package_model.dart';
import 'package:flutter/cupertino.dart';

class HealthPackageProvider extends ChangeNotifier{
  List <HealthPackageModel> _healthPackageData = [
    HealthPackageModel(imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5),
    HealthPackageModel(imageUrl: 'lib/assets/images/health_package_images/diabetic_screening.png', Name: 'Diabetic Screening', price: 270, rating: 4.2),
    HealthPackageModel(imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5),
  ];
}