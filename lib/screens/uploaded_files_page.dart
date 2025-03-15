import 'package:flutter/material.dart';
import 'ResourceDetailPage.dart'; // Import the ResourceDetailPage

class UploadedFilesPage extends StatelessWidget {
  final String fileType;

  const UploadedFilesPage({super.key, required this.fileType});

  @override
  Widget build(BuildContext context) {
    // Sample uploaded files list with titles and view counts
    List<Map<String, dynamic>> uploadedFiles = [
      {"title": "$fileType 1", "views": 120},
      {"title": "$fileType 2", "views": 340},
      {"title": "$fileType 3", "views": 15},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Uploaded $fileType"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: uploadedFiles.length,
          itemBuilder: (context, index) {
            String title = uploadedFiles[index]['title'];
            int views = uploadedFiles[index]['views'];

            return ListTile(
              title: Text(title),
              subtitle: Text("Views: $views"),
              leading: Icon(Icons.video_library), // Icon based on the file type
              trailing: Icon(Icons.visibility), // Show a view icon
              onTap: () {
                // Navigate to the resource detail page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourceDetailPage(
                      fileType: fileType,
                      title: title,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
