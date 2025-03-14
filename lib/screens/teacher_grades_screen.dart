import 'package:flutter/material.dart';
import 'students_list_screen.dart'; // Import the next screen

class TeacherGradesScreen extends StatelessWidget {
  final Map<String, String> teacher;

  TeacherGradesScreen({required this.teacher});

  @override
  Widget build(BuildContext context) {
    // Example grades for demonstration
    final grades = teacher["grade"]!.split(', ');

    return Scaffold(
      appBar: AppBar(
        title: Text('Select Grade'),
      ),
      body: ListView.builder(
        itemCount: grades.length,
        itemBuilder: (context, index) {
          final grade = grades[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(grade),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentsListScreen(grade: grade),
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
