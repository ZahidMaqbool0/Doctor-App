
import 'package:doctorapp/model/signin_signup_screen_slider_model.dart';
import 'package:flutter/widgets.dart';

int _signinSignupImageSliderIndex = 0;

class SigninSignupScreenSliderProvider extends ChangeNotifier{
  List<SigninSignupScreenSliderModel> _signinSignupImageSliderData = [
    SigninSignupScreenSliderModel(signinScreenSliderImages: 'lib/assets/images/signin_signup_slider_image_1.png'),
    SigninSignupScreenSliderModel(signinScreenSliderImages: 'lib/assets/images/signin_signup_slider_image_2.png'),
    SigninSignupScreenSliderModel(signinScreenSliderImages: 'lib/assets/images/signin_signup_slider_image_1.png'),
  ];

  List <SigninSignupScreenSliderModel> get getSliderData => _signinSignupImageSliderData;
  int get getSliderScreenIndex => _signinSignupImageSliderIndex;

  void updateSliderIndex (int sliderIndex){
    _signinSignupImageSliderIndex = sliderIndex;
    notifyListeners();
  }
}