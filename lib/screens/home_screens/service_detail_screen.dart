import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String serviceName;
  const ServiceDetailScreen({super.key, required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(serviceName)),
      body: Center(
        child: Text('Details about $serviceName will appear here.'),
      ),
    );
  }
}
