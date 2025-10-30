import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/widgets/dashboard_header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            height: 80,
            child: DashboardHeaderWidget(),
          ),
        )
      ),
    );
  }
}
