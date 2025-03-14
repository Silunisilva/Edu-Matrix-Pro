import 'package:flutter/material.dart';

class AssignCredentialsScreen extends StatefulWidget {
  final Map<String, String> application;

  AssignCredentialsScreen({required this.application});

  @override
  _AssignCredentialsScreenState createState() => _AssignCredentialsScreenState();
}

class _AssignCredentialsScreenState extends State<AssignCredentialsScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _courseController = TextEditingController();
  TextEditingController _gradeController = TextEditingController();

  void _assignCredentials() {
    // Handle assignment logic here
    String username = _usernameController.text;
    String password = _passwordController.text;
    String course = _courseController.text;
    String grade = _gradeController.text;

    print('Assigning credentials:');
    print('Username: $username');
    print('Password: $password');
    print('Course: $course');
    print('Grade: $grade');

    // Update the teacher management list or database here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assign Credentials'),
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
            SizedBox(height: 16),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              controller: _courseController,
              decoration: InputDecoration(labelText: 'Course Name'),
            ),
            TextField(
              controller: _gradeController,
              decoration: InputDecoration(labelText: 'Grade'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _assignCredentials,
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
