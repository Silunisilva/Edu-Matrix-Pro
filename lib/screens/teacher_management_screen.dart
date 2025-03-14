import 'package:flutter/material.dart';
import 'teacher_detail_screen.dart'; // Import the next screen

class TeacherManagementScreen extends StatelessWidget {
  final List<Map<String, String>> teachers = [
    {"name": "sandali wijesooriya", "tid": "5123789-SCI"},
    {"name": "sandali wijesooriya", "tid": "5123789-SCI"},
    {"name": "sandali wijesooriya", "tid": "5123789-SCI"},
    {"name": "sandali wijesooriya", "tid": "5123789-SCI"},
    {"name": "sandali wijesooriya", "tid": "5123789-SCI"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Management'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          final teacher = teachers[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(teacher["name"]!),
              subtitle: Text(teacher["tid"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeacherDetailScreen(teacher: teacher),
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
