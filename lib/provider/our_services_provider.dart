import 'package:doctorapp/model/our_services_model.dart';
import 'package:flutter/material.dart';

class OurServicesProvider extends ChangeNotifier{
  
  List<OurServicesModel> _ourServicesData = [
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/blood_Test.png', textServicesHeading: 'Blood Test'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/ultra_sound.png', textServicesHeading: 'Ultra Sound'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/x_ray.png', textServicesHeading: 'X-Ray'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/pap_smear.png', textServicesHeading: 'Pap Smear'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/pharmacy.png', textServicesHeading: 'Pharmacy'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/covid_test.png', textServicesHeading: 'Covid Test'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/vaccinations.png', textServicesHeading: 'Vaccinations'),
    OurServicesModel(imagUrlOurServices: 'lib/assets/images/our_services_images/more.png', textServicesHeading: 'More'),
  ];

  List<OurServicesModel> get getOurServicesData => _ourServicesData;

}