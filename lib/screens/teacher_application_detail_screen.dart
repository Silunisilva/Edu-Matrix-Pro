import 'package:flutter/material.dart';
import 'assign_credentials_screen.dart'; // Import the credentials screen

class TeacherApplicationDetailScreen extends StatefulWidget {
  final Map<String, String> application;

  TeacherApplicationDetailScreen({required this.application});

  @override
  _TeacherApplicationDetailScreenState createState() => _TeacherApplicationDetailScreenState();
}

class _TeacherApplicationDetailScreenState extends State<TeacherApplicationDetailScreen> {
  TextEditingController _commentController = TextEditingController();

  void _acceptApplication(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AssignCredentialsScreen(application: widget.application),
      ),
    );
  }

  void _rejectApplication() {
    // Handle rejection logic here
    print('Application rejected with comment: ${_commentController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Application Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Subject: ${widget.application["name"]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(widget.application["message"]!),
            SizedBox(height: 16),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: 'Comment',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _rejectApplication,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Reject'),
                ),
                ElevatedButton(
                  onPressed: () => _acceptApplication(context),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text('Accept'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
