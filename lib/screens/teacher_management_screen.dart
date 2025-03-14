import 'package:flutter/material.dart';

class TeacherManagementScreen extends StatelessWidget {
  const TeacherManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teacher Management")),
      body: ListView(
        children: [
          // List of teachers with options to update or remove
          ListTile(
            title: Text("Teacher Name"),
            subtitle: Text("Subject: Math"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Logic to remove teacher
              },
            ),
            onTap: () {
              // Navigate to update teacher screen
            },
          ),
          // Add more teachers here
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add teacher screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
