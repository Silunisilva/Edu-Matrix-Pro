import 'package:flutter/material.dart';

class InquiryDetailScreen extends StatelessWidget {
  final Map<String, String> inquiry;

  InquiryDetailScreen({required this.inquiry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inquiry Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID: ${inquiry["id"]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              inquiry["title"]!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(inquiry["description"]!),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: 'Comment',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle the "Done" button press
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
