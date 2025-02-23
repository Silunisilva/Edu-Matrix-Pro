import 'package:flutter/material.dart';
import 'admin_loginUI.dart'; // Import the AdminLoginScreen UI
import 'admin_dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AdminDashboard(),//AdminLoginScreen(), // Call the AdminLoginScreen
    );
  }
}
