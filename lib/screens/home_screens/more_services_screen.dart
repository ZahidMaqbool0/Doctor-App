import 'package:flutter/material.dart';

class MoreServicesScreen extends StatelessWidget {
  const MoreServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More Services')),
      body: const Center(
        child: Text('All available services will appear here.'),
      ),
    );
  }
}
