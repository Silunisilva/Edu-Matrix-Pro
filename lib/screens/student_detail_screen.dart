import 'package:flutter/material.dart';

class StudentDetailScreen extends StatelessWidget {
  final Map<String, String> student;

  StudentDetailScreen({required this.student});

  void _deleteStudent(BuildContext context) {
    // Handle student deletion logic here
    print('Deleting student: ${student["name"]}');
    Navigator.pop(context); // Go back to the previous screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${student["name"]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Student ID: ${student["sid"]}'),
            Spacer(),
            ElevatedButton(
              onPressed: () => _deleteStudent(context),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Delete Student'),
            ),
          ],
        ),
      ),
    );
  }
}
