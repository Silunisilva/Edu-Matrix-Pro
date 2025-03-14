import 'package:flutter/material.dart';
import 'inquiry_detail_screen.dart'; // Import the detail screen

class StudentInquiriesScreen extends StatelessWidget {
  final List<Map<String, String>> inquiries = [
    {
      "id": "TID01232",
      "title": "Class Schedule Inquiry",
      "description": "Can you provide the updated schedule for next week's classes?",
      "status": "To review",
    },
    {
      "id": "SID01039",
      "title": "Study Materials Request",
      "description": "I couldn't find the notes for yesterday's Maths class on the app. Can you help?",
      "status": "To review",
    },
    {
      "id": "SID020006",
      "title": "Refund Request",
      "description": "I want to cancel my enrollment and request a refund. What are the steps?",
      "status": "Reviewed",
    },
    {
      "id": "TID044566",
      "title": "Login Issue",
      "description": "I can't log in to my account. It says 'Invalid credentials', but I'm sure my password is correct.",
      "status": "Reviewed",
    },
    {
      "id": "SID059966",
      "title": "Assignment Submission Deadline",
      "description": "I couldn't submit my assignment before the deadline due to a technical issue. Can I still upload my Maths assignment?",
      "status": "Reviewed",
    },
    {
      "id": "SID04766",
      "title": "Technical Issue Report",
      "description": "I am unable to join the online class today. The link is not working. Can you help?",
      "status": "Reviewed",
    },
    {
      "id": "SID0111",
      "title": "Fee Payment Confirmation",
      "description": "I have paid my fees for this semester's classes via bank transfer yesterday. Can you confirm?",
      "status": "Fixed",
    },
    {
      "id": "SID02008",
      "title": "Refund Request",
      "description": "I need to cancel my enrollment and request a refund. What are the steps?",
      "status": "Fixed",
    },
    {
      "id": "SID05783",
      "title": "Assignment Submission Deadline",
      "description": "I couldn't submit my assignment before the deadline due to a technical issue. Can I still upload my Maths assignment?",
      "status": "Fixed",
    },
    {
      "id": "SID046",
      "title": "Technical Issue Report",
      "description": "I am unable to join the online class today. The link is not working. Can you help?",
      "status": "Fixed",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Inquiries'),
      ),
      body: ListView.builder(
        itemCount: inquiries.length,
        itemBuilder: (context, index) {
          final inquiry = inquiries[index];
          final isFixed = inquiry["status"] == "Fixed";

          return Card(
            margin: EdgeInsets.all(8),
            color: isFixed ? Colors.green[50] : Colors.white,
            child: ListTile(
              title: Text(inquiry["title"]!),
              subtitle: Text(inquiry["description"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InquiryDetailScreen(inquiry: inquiry),
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
