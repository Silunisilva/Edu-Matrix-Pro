import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Ensure you have the Provider package added to your pubspec.yaml
import 'screens/teacher_dashboard.dart'; // The screen that displays the dashboard
import 'controllers/teacher_dashboard_controller.dart'; // The controller managing dashboard state

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TeacherDashboardController(),
      child: MaterialApp(
        title: 'Teacher Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TeacherDashboard(), // The screen where the dashboard is displayed
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
