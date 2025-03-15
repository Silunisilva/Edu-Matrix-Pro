import 'package:flutter/material.dart';

class ResourceDetailPage extends StatelessWidget {
  final String fileType;
  final String title;

  const ResourceDetailPage({
    super.key,
    required this.fileType,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // Sample viewers for the resource
    List<Map<String, String>> viewers = [
      {"name": "John Doe", "profilePic": "assets/profile1.jpg"},
      {"name": "Jane Smith", "profilePic": "assets/profile2.jpg"},
      {"name": "Mike Johnson", "profilePic": "assets/profile3.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the content based on file type
            fileType == "video"
                ? Container(
                    height: 200,
                    color: Colors.black,
                    child: Center(
                      child: Icon(Icons.play_circle_fill,
                          color: Colors.white, size: 50),
                    ),
                  )
                : fileType == "material"
                    ? Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.grey.shade200,
                        child: Column(
                          children: [
                            Icon(Icons.description, size: 40),
                            SizedBox(height: 8),
                            Text(
                              'Reading Material: $title',
                              style: TextStyle(fontSize: 18),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Implement download functionality here
                              },
                              child: Text('Download'),
                            ),
                          ],
                        ),
                      )
                    : fileType == "assignment"
                        ? Column(
                            children: [
                              Icon(Icons.assignment, size: 40),
                              SizedBox(height: 8),
                              Text(
                                'Assignment: $title',
                                style: TextStyle(fontSize: 18),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Implement submission functionality here
                                },
                                child: Text('Submit Assignment'),
                              ),
                            ],
                          )
                        : Container(),

            SizedBox(height: 30),

            // Viewers list section
            Text(
              "Viewers:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: viewers.length,
              itemBuilder: (context, index) {
                String name = viewers[index]['name']!;
                String profilePic = viewers[index]['profilePic']!;

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(profilePic),
                  ),
                  title: Text(name),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
