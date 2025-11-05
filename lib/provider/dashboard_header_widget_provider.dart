import 'package:doctorapp/model/dashboard_header_widget_model.dart';
import 'package:flutter/material.dart';

class DashboardHeaderWidgetProvider extends ChangeNotifier {
  List<DashboardHeaderWidgetModel> _dashboardHeaderData = [
    DashboardHeaderWidgetModel(
      userImage: 'lib/assets/images/dashboard_header_image.jpg',
      useName: 'Bentornato',
      greetingMessage: 'Good Morning',
    ),
  ];

  List<DashboardHeaderWidgetModel> get getDashboardHeaderData => _dashboardHeaderData;

}
