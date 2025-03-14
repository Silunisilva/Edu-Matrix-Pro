import 'package:flutter/material.dart';
import 'teacher_grades_screen.dart'; // Import the next screen

class StudentManagementScreen extends StatelessWidget {
  final List<Map<String, String>> teachers = [
    {"name": "Mr. Sumith - Science", "grade": "Grade 6, 7"},
    {"name": "Mrs. Priya - Maths", "grade": "Grade 6, 8"},
    {"name": "Mrs. Sakuni - English", "grade": "Grade 6, 11"},
    {"name": "Ms. Ramya - Biology", "grade": "Advanced Level"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Management'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          final teacher = teachers[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(teacher["name"]!),
              subtitle: Text(teacher["grade"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeacherGradesScreen(teacher: teacher),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
