import 'package:flutter/material.dart';
import 'student_detail_screen.dart'; // Import the next screen

class StudentsListScreen extends StatelessWidget {
  final String grade;

  StudentsListScreen({required this.grade});

  // Example student data for demonstration
  final List<Map<String, String>> students = [
    {"name": "Aman", "sid": "SID 6001"},
    {"name": "Akii", "sid": "SID 6004"},
    {"name": "Tasha", "sid": "SID 6004"},
    {"name": "Kesler", "sid": "SID 7001"},
    {"name": "Jay", "sid": "SID 7003"},
    {"name": "Manha", "sid": "SID 7004"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students - $grade'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(student["name"]!),
              subtitle: Text(student["sid"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailScreen(student: student),
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
