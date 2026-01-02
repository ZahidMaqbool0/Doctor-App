import 'package:carousel_slider/carousel_controller.dart';
import 'package:doctorapp/model/carouselSliderModel.dart';
import 'package:doctorapp/model/health_package_model.dart';
import 'package:flutter/cupertino.dart';

class HealthPackageProvider extends ChangeNotifier{

  List <HealthPackageModel> _healthPackageData = [
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_1', imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 1'}),
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_2', imageUrl: 'lib/assets/images/health_package_images/diabetic_screening.png', Name: 'Diabetic Screening', price: 270, rating: 4.2, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 2'}),
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_3', imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 3'}),
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_4', imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 4'}),
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_5', imageUrl: 'lib/assets/images/health_package_images/diabetic_screening.png', Name: 'Diabetic Screening', price: 270, rating: 4.2, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 5'}),
    HealthPackageModel(id: 'HEALTH_PACKAGE_ITEM_6', imageUrl: 'lib/assets/images/health_package_images/full_blood_examination.png', Name: 'Full Blood Examination', price: 450, rating: 4.5, details: {'ofer1': 'Full Blood Examination', 'ofer2': 'Diabetic Screen',  'ofer3': 'Kidney Function Test', 'ofer4': 'Liver Function Test', 'ofer5' : 'Package 6'}),
  ];

  List<Carouselslidermodel> _CarouselsliderData = [
    Carouselslidermodel(imageUrl: 'lib/assets/images/home_page_banner_image.webp', cardText: 'Early protection for \n your family health', btnText: 'Learn more'),
    Carouselslidermodel(imageUrl: 'lib/assets/images/home_page_banner_image.webp', cardText: 'Early protection for \n your family health', btnText: 'Learn more'),
    Carouselslidermodel(imageUrl: 'lib/assets/images/home_page_banner_image.webp', cardText: 'Early protection for \n your family health', btnText: 'Learn more'),
  ];


  int _activeIndex = 0;
  final CarouselSliderController IndecaterCarouselController = CarouselSliderController();
  int _activeIndexofPackage = 0;


  List<HealthPackageModel> get getHealthPackage => _healthPackageData;
  int get getActiveIndex => _activeIndex;
  List<Carouselslidermodel> get getCarouselsliderData => _CarouselsliderData;
  int get getActiveIndexofPackage => _activeIndexofPackage;

  void updateIndexCarouselSlider(int index){
    _activeIndex = index;
    notifyListeners();
  }

  void updateActiveIndexofPackage(int index){
    _activeIndexofPackage = index;
    notifyListeners();
  }


}