import 'package:doctorapp/model/onboarding_model.dart';
import 'package:flutter/cupertino.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentPageIndex = 0;

  List<OnboardingModel> _onBoardingScreenData = [
    OnboardingModel(
      imageAssets: 'lib/assets/images/onbording_screen_image_1.png',
      title: 'Check Health',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    ),
    OnboardingModel(
      imageAssets: 'lib/assets/images/onbording_screen_image_2.png',
      title: 'Regular Check',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    ),
    OnboardingModel(
      imageAssets: 'lib/assets/images/onbording_screen_image_3.png',
      title: 'Get Healthy',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    ),
  ];

  List<OnboardingModel> get getOnBoardingScreenData => _onBoardingScreenData;
  int get currentPageIndex => _currentPageIndex;

  void updateCurrentPage(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
}
