import 'package:flutter/material.dart';
import '../models/course_model.dart';
import '../models/material_model.dart';
import '../screens/dashboard_content.dart';

import '../screens/ProfilePage.dart';
import '../screens/NotificationsPage.dart';
import '../screens/UploadedVideosPage.dart';

class TeacherDashboardController with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex; // Getter

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void onItemTapped(int index) {
    selectedIndex = index; // Use the setter
  }

  final List<CourseModel> courses = [
    CourseModel(title: 'Mathematics 101', students: '98 Students'),
    CourseModel(title: 'Physics 201', students: '72 Students'),
    CourseModel(title: 'Chemistry 101', students: '65 Students'),
  ];

  final List<MaterialModel> materials = [
    MaterialModel(title: 'Algebra Basics.pdf', time: '2h ago'),
    MaterialModel(title: 'Thermo Lecture.pptx', time: '1d ago'),
    MaterialModel(title: 'Lab Manual.docx', time: '3d ago'),
  ];

  // ✅ Added missing pages getter
  List<Widget> get pages => const [
        DashboardContent(), // Main Dashboard
        NotificationsPage(),
        UploadedVideosPage(),
        ProfilePage(),
      ];

  void deleteMaterial(MaterialModel material) {
    materials.remove(material);
    notifyListeners(); // Notify UI to rebuild
  }
}
