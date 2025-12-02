import 'package:doctorapp/provider/dashboard_provider.dart';
import 'package:doctorapp/screens/appointment_screens/appointment_screen.dart';
import 'package:doctorapp/screens/home_screens/home_screen.dart';
import 'package:doctorapp/screens/my_health_screens/my_health_screen.dart';
import 'package:doctorapp/screens/profile_screen/profile_screen.dart';
import 'package:doctorapp/screens/store_screen/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    MyHealthScreen(),
    AppointmentScreen(),
    StoreScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DashboardProvider>(
        builder: (context, navProvider, child) {
          return IndexedStack(
            index: navProvider.selectedIndex,
            children: _screens,
          );
        },
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Consumer<DashboardProvider>(
        builder: (context, navProvider, child) {
          return Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x10000000),
                  blurRadius: 2,
                  offset: Offset(0, -3),
                ),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(context, 0, Icons.home, 'Home', navProvider.selectedIndex),
                    _buildNavItem(context, 1, Icons.favorite, 'My Health', navProvider.selectedIndex),
                    const SizedBox(width: 70), // Center button ke liye jagah
                    _buildNavItem(context, 3, Icons.shopping_cart, 'Store', navProvider.selectedIndex),
                    _buildNavItem(context, 4, Icons.person, 'Profile', navProvider.selectedIndex),
                  ],
                ),

                // Center Floating Button (Calendar)
                Positioned(
                  top: -28,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      navProvider.setSelectedIndex(2); // Appointment Screen
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.4),
                            blurRadius: 15,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Nav Item Widget
  Widget _buildNavItem(BuildContext context, int index, IconData icon, String label, int selectedIndex) {
    final bool isSelected = index == selectedIndex;
    final Color color = isSelected ? Colors.blue : Colors.grey.shade600;

    return GestureDetector(
      onTap: () {
        Provider.of<DashboardProvider>(context, listen: false)
            .setSelectedIndex(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 26),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}