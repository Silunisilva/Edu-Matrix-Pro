import 'package:flutter/material.dart';
//import 'screens/admin_loginUI.dart'; // Import the AdminLoginScreen UI
import 'screens/admin_dashboard.dart';


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
