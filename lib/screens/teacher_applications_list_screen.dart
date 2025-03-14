import 'package:flutter/material.dart';
import 'teacher_application_detail_screen.dart'; // Import the detail screen

class TeacherApplicationsListScreen extends StatelessWidget {
  final List<Map<String, String>> applications = [
    {
      "name": "Maths Teacher",
      "message": "Hello Admin, I am interested in joining your institute as a Mathematics teacher...",
    },
    {
      "name": "Science Teacher",
      "message": "Hello Admin, I am interested in joining your institute as a Science teacher...",
    },
    {
      "name": "English Teacher",
      "message": "Hello Admin, I am interested in joining your institute as an English teacher...",
    },
    {
      "name": "Physics Teacher",
      "message": "Hello Admin, I am interested in joining your institute as a Physics teacher...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Applications'),
      ),
      body: ListView.builder(
        itemCount: applications.length,
        itemBuilder: (context, index) {
          final application = applications[index];

          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(application["name"]!),
              subtitle: Text(application["message"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeacherApplicationDetailScreen(application: application),
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
