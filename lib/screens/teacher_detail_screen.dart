import 'package:flutter/material.dart';

class TeacherDetailScreen extends StatefulWidget {
  final Map<String, String> teacher;

  TeacherDetailScreen({required this.teacher});

  @override
  _TeacherDetailScreenState createState() => _TeacherDetailScreenState();
}

class _TeacherDetailScreenState extends State<TeacherDetailScreen> {
  void _deleteTeacher(BuildContext context) {
    // Handle teacher deletion logic here
    print('Deleting teacher: ${widget.teacher["name"]}');
    Navigator.pop(context); // Go back to the previous screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/teacher_avatar.png'), // Add your image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${widget.teacher["name"]}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('TID: ${widget.teacher["tid"]}'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Class: Grade 12 / 13'),
            Text('Subject: Advanced Level Biology'),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // Handle CV download logic here
              },
              icon: Icon(Icons.download),
              label: Text('Download CV'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300),
            ),
            SizedBox(height: 8),
            Text('Uploaded videos: 12'),
            Text('Uploaded documents: 23'),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deleteTeacher(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
