// import 'package:flutter/material.dart';
// //import 'screens/admin_loginUI.dart'; // Import the AdminLoginScreen UI
// import 'screens/admin_dashboard.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const AdminDashboard(),//AdminLoginScreen(), // Call the AdminLoginScreen
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'screens/admin_loginUI.dart';
import 'screens/admin_dashboard.dart';
import 'screens/teacher_applications_list_screen.dart';
import 'screens/teacher_management_screen.dart';
import 'screens/student_inquiries_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuition Class Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AdminLoginScreen(),
        '/dashboard': (context) => const AdminDashboard(),
        '/teacher_applications_list': (context) => TeacherApplicationsListScreen(),
        '/teacher_management': (context) => TeacherManagementScreen(),
        '/student_inquiries': (context) => StudentInquiriesScreen(),
      },
    );
  }
}
