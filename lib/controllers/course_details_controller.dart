import 'package:flutter/material.dart';

class CourseDetailsController with ChangeNotifier {
  String _courseTitle = "";
  String _students = "";
  String _classTime = "";

  String get courseTitle => _courseTitle;
  String get students => _students;
  String get classTime => _classTime;

  // Set course details
  void setCourseDetails(String title, String students, String classTime) {
    _courseTitle = title;
    _students = students;
    _classTime = classTime;
    notifyListeners();
  }
}
